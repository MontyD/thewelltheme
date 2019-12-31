type Google = typeof google;
type Map = google.maps.Map;

// Google Maps expects callback functions to be on the window object, so we create a new window type containing these
type EnhancedWindow = Window & { google?: Google, initMap?: () => void, gm_authFailure?: () => void };

export const initMap = () => {
    let mapElement: HTMLElement | null = null;
    let mapInstance: Map | null = null;

    (window as EnhancedWindow).initMap = () => {
        const { google } = window as EnhancedWindow;
        mapElement = document.getElementById('map');
        if (!mapElement || !google) {
            return;
        }

        const { maps: { LatLng, MapTypeId, Map, Marker } } = google;
        const theWellPosition = new LatLng(52.3739128, 0.928362);
        const mapOptions = {
          center: theWellPosition,
          zoom: 14,
          mapTypeId: MapTypeId.ROADMAP,
          scrollwheel: false,
        };
        mapInstance = new Map(mapElement, mapOptions);
        new Marker({
            position: theWellPosition,
            map: mapInstance,
            title: 'The Well, Hopton'
        });
    };

    // this is the function that gm calls if it cannot authenticate, see
    // https://developers.google.com/maps/documentation/javascript/events#auth-errors
    (window as EnhancedWindow).gm_authFailure = () => {
        console.error('Caught map load error - falling back to image');
        mapElement?.parentElement?.removeChild(mapElement);
        mapElement?.parentElement?.appendChild(mapElement);
    };
};
