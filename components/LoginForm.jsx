'use client';

import { useEffect, useState } from 'react';
import { createClient, hasSupabaseEnv } from '../lib/supabase/client';

export default function LoginForm() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [mode, setMode] = useState('sign-in');
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

    const authCall = mode === 'create-account'
      ? supabase.auth.signUp({ email, password })
      : supabase.auth.signInWithPassword({ email, password });

    const { data, error } = await authCall;

    setLoading(false);

    if (error) {
      setMessage(error.message);
      return;
    }

    if (mode === 'create-account' && !data.session) {
      setMessage('Account created. Check your email to confirm it, then come back and sign in with your password.');
      return;
    }

    window.location.href = '/';
  };

  return (
    <form onSubmit={submit} className="mx-auto max-w-md rounded-[2rem] border border-zinc-200 bg-white/80 p-6 shadow-soft">
      <div className="text-sm font-semibold uppercase tracking-wide text-zinc-500">iSmile Scheduler</div>
      <h1 className="mt-2 text-2xl font-semibold text-zinc-950">{mode === 'create-account' ? 'Create account' : 'Login'}</h1>
      <p className="mt-2 text-sm text-zinc-600">
        Use your email and password. This avoids the magic-link callback issue while we finish the Supabase setup.
      </p>

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

      <label className="mt-4 block text-sm font-semibold text-zinc-700">
        Password
        <input
          type="password"
          value={password}
          onChange={(event) => setPassword(event.target.value)}
          required
          minLength={6}
          placeholder="Create or enter your password"
          className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm outline-none ring-sage/30 transition focus:ring-4"
        />
      </label>

      <button
        type="submit"
        disabled={!configured || loading}
        className="mt-5 w-full rounded-2xl bg-zinc-900 px-4 py-3 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5 disabled:cursor-not-allowed disabled:bg-zinc-400"
      >
        {loading ? 'Working...' : mode === 'create-account' ? 'Create account' : 'Login'}
      </button>

      <button
        type="button"
        onClick={() => {
          setMessage('');
          setMode(mode === 'create-account' ? 'sign-in' : 'create-account');
        }}
        className="mt-3 w-full rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm font-semibold text-zinc-700 transition hover:bg-cream"
      >
        {mode === 'create-account' ? 'Already have an account? Login' : 'Need an account? Create one'}
      </button>

      {message ? <div className="mt-4 rounded-2xl border border-zinc-200 bg-cream p-3 text-sm text-zinc-700">{message}</div> : null}
    </form>
  );
}
