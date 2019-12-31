let navOpen = false;

const toggleNav = ({ overlayElement, navElement }: { overlayElement: Element, navElement: Element }) => {
    const method = navOpen ? 'remove' : 'add' as const;
    overlayElement.classList[method]('active');
    navElement.classList[method]('active');
    navOpen = !navOpen;
};

export const setupNavHandlingActions = () => {
    const overlayElement = document.querySelector('[data-overlay]');
    const navElement = document.querySelector('[data-mobile-nav]');

    if (!overlayElement || !navElement) {
        return;
    }

    document.querySelectorAll('[data-toggle-nav]').forEach(item => {
        item.addEventListener('click', e => {
            e.preventDefault();
            toggleNav({ overlayElement, navElement });
        });
    });
}