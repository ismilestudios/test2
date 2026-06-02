import LoginForm from '../../components/LoginForm';

export const metadata = {
  title: 'Login | iSmile Scheduler'
};

export default function LoginPage() {
  return (
    <main className="min-h-screen bg-cream px-4 py-10 font-sans text-zinc-900">
      <LoginForm />
    </main>
  );
}
