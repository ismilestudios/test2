import { NextResponse } from 'next/server';
import { createClient } from '../../../lib/supabase/server';

export async function GET(request) {
  const requestUrl = new URL(request.url);
  const code = requestUrl.searchParams.get('code');
  const tokenHash = requestUrl.searchParams.get('token_hash');
  const type = requestUrl.searchParams.get('type') || 'email';
  const next = requestUrl.searchParams.get('next') || '/';
  const supabase = createClient();

  if (!supabase) {
    return NextResponse.redirect(new URL('/login?error=supabase_not_configured', requestUrl.origin));
  }

  let error = null;

  if (code) {
    const result = await supabase.auth.exchangeCodeForSession(code);
    error = result.error;
  } else if (tokenHash) {
    const result = await supabase.auth.verifyOtp({
      type,
      token_hash: tokenHash
    });
    error = result.error;
  } else {
    error = { message: 'Missing auth code or token hash.' };
  }

  if (error) {
    console.error('Supabase auth callback error:', error.message);
    return NextResponse.redirect(new URL(`/login?error=${encodeURIComponent(error.message)}`, requestUrl.origin));
  }

  return NextResponse.redirect(new URL(next, requestUrl.origin));
}
