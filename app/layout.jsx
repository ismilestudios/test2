import './globals.css';

export const metadata = {
  title: 'iSmile Scheduler v0.91',
  description: 'Internal school scheduling prototype for iSmile Studios.'
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
