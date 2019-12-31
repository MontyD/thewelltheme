const polyfills = 'https://cdn.polyfill.io/v2/polyfill.min.js?features=Promise';

export const needsPolyfills = () => typeof Promise === 'undefined';

export const loadPolyfills = (done: (error?: Error) => void) => {
    const scriptEl = document.createElement('script');
    scriptEl.src = polyfills;
    scriptEl.onload = () => done();
    scriptEl.onerror = () => done(new Error('Failed to load script ' + polyfills));
    document.head.appendChild(scriptEl);
};