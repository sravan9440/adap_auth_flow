[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><title>Adaptive Login • Demo</title></head>
<body>


  
  
  
  


  <div class="card">
    <div class="brand">
      <div class="badge">A</div>
      <div>
        <h1>Adaptive Authentication (Demo)</h1>
        <p class="sub">LOW → Password • HIGH → Password + OTP</p>
      </div>
    </div>

    <form method="post">
      <div class="row">
        <div>
          <div style="font-weight:600;">Step-up risk (demo toggle)</div>
          <div class="hint">Turn on to simulate unfamiliar device / higher risk.</div>
        </div>
        <label class="switch" title="Force HIGH risk (demo)">
          <input type="checkbox" name="force_high">
          <span class="slider"></span>
        </label>
      </div>

      <button class="btn" type="submit">Continue to sign in</button>

      <div class="footer">
        Demo credentials: <code>demo</code> / <code>demo123</code> • OTP: <code>123456</code>
      </div>
    </form>
  </div>

</body>
<style>
    :root {
      --bg: #0f172a;        /* slate-900 */
      --card: #111827;      /* gray-900 */
      --muted: #9ca3af;     /* gray-400 */
      --text: #e5e7eb;      /* gray-200 */
      --primary: #60a5fa;   /* blue-400 */
      --accent: #22d3ee;    /* cyan-400 */
      --danger: #f87171;    /* red-400 */
      --radius: 16px;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0; min-height: 100vh; display: grid; place-items: center;
      background: radial-gradient(1200px 600px at 20% 10%, #1f2937 0%, #0b1220 60%, #050810 100%), var(--bg);
      color: var(--text); font: 500 16px/1.5 -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Inter, Arial, sans-serif;
    }
    .card {
      width: min(440px, 92vw);
      background: linear-gradient(180deg, rgba(255,255,255,0.04), rgba(255,255,255,0.02));
      backdrop-filter: blur(8px);
      border: 1px solid rgba(255,255,255,0.08);
      border-radius: var(--radius);
      padding: 28px 24px;
      box-shadow: 0 10px 40px rgba(0,0,0,0.45);
    }
    .brand { display: flex; align-items: center; gap: 10px; margin-bottom: 8px; }
    .badge {
      width: 36px; height: 36px; border-radius: 10px;
      background: linear-gradient(135deg, var(--primary), var(--accent));
      display: grid; place-items: center; font-weight: 800; color: #0b1220;
    }
    h1 { margin: 0 0 6px; font-size: 22px; }
    p.sub { margin: 0 0 18px; color: var(--muted); font-size: 14px; }
    .row { display: flex; justify-content: space-between; align-items: center; margin: 14px 0 22px; }
    .switch {
      --w: 48px; --h: 28px;
      position: relative; display: inline-block; width: var(--w); height: var(--h);
    }
    .switch input { display: none; }
    .slider {
      position: absolute; cursor: pointer; top: 0; left: 0; right: 0; bottom: 0;
      background: #374151; transition: .2s; border-radius: var(--h);
      border: 1px solid rgba(255,255,255,0.12);
    }
    .slider:before {
      position: absolute; content: ""; height: 22px; width: 22px; left: 3px; top: 50%;
      transform: translateY(-50%); background: #e5e7eb; border-radius: 50%; transition: .2s;
      box-shadow: 0 2px 8px rgba(0,0,0,0.3);
    }
    input:checked + .slider { background: linear-gradient(90deg, var(--primary), var(--accent)); }
    input:checked + .slider:before { transform: translate(20px, -50%); }
    .hint { color: var(--muted); font-size: 13px; }
    .btn {
      appearance: none; border: 0; width: 100%;
      padding: 12px 16px; border-radius: 12px; font-weight: 700; letter-spacing: .2px;
      background: linear-gradient(135deg, var(--primary), var(--accent));
      color: #0b1220; cursor: pointer; transition: transform .06s ease;
    }
    .btn:active { transform: translateY(1px); }
    .footer { margin-top: 16px; color: var(--muted); font-size: 12.5px; text-align: center; }
    code { color: #c7d2fe; font-weight: 700; }
  </style>

</html>