import './globals.css';
import { SCHEDULER_VERSION } from '../lib/schedulerVersion';

export const metadata = {
  title: `Scheduler v${SCHEDULER_VERSION}`,
  description: 'Internal workspace for school picture days, staffing, notes, and historical reference.',
  icons: {
    icon: [
      { url: '/scheduler-icon-16.png', sizes: '16x16', type: 'image/png' },
      { url: '/scheduler-icon-32.png', sizes: '32x32', type: 'image/png' },
      { url: '/scheduler-icon-192.png', sizes: '192x192', type: 'image/png' }
    ],
    apple: '/scheduler-icon-180.png'
  }
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
