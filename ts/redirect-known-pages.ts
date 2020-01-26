const knownPaths: {[key: string]: string | undefined} = {
    'foodanddrink': '/foodanddrink.html',
    'mission': '/mission.html'
};

const replaceKnownErrorPathsWithKnownPaths = (currentHref: string) => {
    const parsedHref = currentHref.endsWith('/') ? currentHref.substring(0, currentHref.length - 1) : currentHref;
    const lastSection = parsedHref.substring(parsedHref.lastIndexOf('/') + 1);
    const knownPath = knownPaths[lastSection];
    if (knownPath) {
        window.location.replace(knownPath);
    }
};

replaceKnownErrorPathsWithKnownPaths(window.location.href);