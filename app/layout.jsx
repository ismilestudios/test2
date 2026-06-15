import './globals.css';

export const metadata = {
  title: 'iSmile Scheduler v0.93',
  description: 'Internal workspace for school picture days, staffing, notes, and historical reference.'
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
