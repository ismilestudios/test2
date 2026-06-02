'use client';

import { useEffect, useState } from 'react';
import { createClient, hasSupabaseEnv } from '../lib/supabase/client';

export default function LoginForm() {
  const [email, setEmail] = useState('');
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);
  const configured = hasSupabaseEnv();

  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    const error = params.get('error');
    if (error) setMessage(`Login link problem: ${error}`);
  }, []);

  const submit = async (event) => {
    event.preventDefault();
    setMessage('');

    const supabase = createClient();
    if (!supabase) {
      setMessage('Supabase environment variables are not set yet.');
      return;
    }

    setLoading(true);
    const origin = window.location.origin;
    const { error } = await supabase.auth.signInWithOtp({
      email,
      options: { emailRedirectTo: `${origin}/auth/callback?next=/` }
    });
    setLoading(false);

    if (error) {
      setMessage(error.message);
      return;
    }

    setMessage('Check your email for the login link.');
  };

  return (
    <form onSubmit={submit} className="mx-auto max-w-md rounded-[2rem] border border-zinc-200 bg-white/80 p-6 shadow-soft">
      <div className="text-sm font-semibold uppercase tracking-wide text-zinc-500">iSmile Scheduler</div>
      <h1 className="mt-2 text-2xl font-semibold text-zinc-950">Login</h1>
      <p className="mt-2 text-sm text-zinc-600">Enter your email and Supabase will send a secure magic link.</p>

      {!configured ? (
        <div className="mt-4 rounded-2xl border border-amber-200 bg-amber-50 p-3 text-sm text-amber-900">
          Supabase is not connected yet. Add the environment variables in Vercel first.
        </div>
      ) : null}

      <label className="mt-5 block text-sm font-semibold text-zinc-700">
        Email address
        <input
          type="email"
          value={email}
          onChange={(event) => setEmail(event.target.value)}
          required
          placeholder="you@ismilestudios.com"
          className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm outline-none ring-sage/30 transition focus:ring-4"
        />
      </label>

      <button
        type="submit"
        disabled={!configured || loading}
        className="mt-5 w-full rounded-2xl bg-zinc-900 px-4 py-3 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5 disabled:cursor-not-allowed disabled:bg-zinc-400"
      >
        {loading ? 'Sending...' : 'Send login link'}
      </button>

      {message ? <div className="mt-4 rounded-2xl border border-zinc-200 bg-cream p-3 text-sm text-zinc-700">{message}</div> : null}
    </form>
  );
}
