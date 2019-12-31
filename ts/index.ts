import { runTypers } from './typer';
import { initMap } from './map';
import { setupNavHandlingActions } from './nav';
import { loadPolyfills, needsPolyfills } from './polyfills';

const main = () => {
    runTypers();
    initMap();
    setupNavHandlingActions();
}

if (needsPolyfills()) {
    loadPolyfills(error => {
        if (error) {
            console.error(error);
        } else {
            main();
        }
    });
} else {
    main();
}

