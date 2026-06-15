'use client';

import { useEffect, useState } from 'react';
import { LogIn, LogOut, ShieldCheck } from 'lucide-react';
import { createClient, hasSupabaseEnv } from '../lib/supabase/client';

export default function AuthStatus() {
  const [userEmail, setUserEmail] = useState(null);
  const [isConfigured, setIsConfigured] = useState(false);

  useEffect(() => {
    const configured = hasSupabaseEnv();
    setIsConfigured(configured);
    if (!configured) return;

    const supabase = createClient();
    if (!supabase) return;

    supabase.auth.getSession().then(async ({ data }) => {
      if (data.session?.user?.email) {
        setUserEmail(data.session.user.email);
        return;
      }

      const { data: userData } = await supabase.auth.getUser();
      setUserEmail(userData.user?.email || null);
    });

    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      setUserEmail(session?.user?.email || null);
    });

    return () => listener.subscription.unsubscribe();
  }, []);

  if (!isConfigured) {
    return (
      <div className="rounded-2xl border border-amber-200 bg-amber-50 px-3 py-2 text-xs font-semibold text-amber-900">
        Supabase setup pending
      </div>
    );
  }

  if (!userEmail) {
    return (
      <a href="/login" className="inline-flex items-center justify-center gap-2 rounded-2xl border border-zinc-200 bg-white/85 px-3 py-2 text-sm font-semibold text-zinc-800 shadow-sm transition hover:-translate-y-0.5 hover:bg-white">
        <LogIn size={16} /> Login
      </a>
    );
  }

  const signOut = async () => {
    const supabase = createClient();
    await supabase?.auth.signOut();
    window.location.href = '/';
  };

  return (
    <div className="flex flex-wrap items-center gap-2">
      <div className="inline-flex max-w-[220px] items-center gap-2 rounded-2xl border border-emerald-200 bg-emerald-50 px-3 py-2 text-xs font-semibold text-emerald-900">
        <ShieldCheck size={15} />
        <span className="truncate">{userEmail}</span>
      </div>
      <button type="button" onClick={signOut} className="inline-flex items-center gap-1 rounded-2xl border border-zinc-200 bg-white/80 px-3 py-2 text-xs font-semibold text-zinc-700 transition hover:bg-white">
        <LogOut size={14} /> Logout
      </button>
    </div>
  );
}
