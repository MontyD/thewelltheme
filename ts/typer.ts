const pause = (pauseTime: number) => new Promise(resolve => setTimeout(resolve, pauseTime));

const typePhraseAndDelete = async (phrase: string, targetElement: HTMLElement, { typeSpeed = 100, deleteSpeed = 50, deleteAfter = 2000 } = {}) => {
    let n = -1;
    while (++n <= phrase.length) {
        targetElement.innerText = phrase.slice(0, n);
        await pause(typeSpeed);
    }

    await pause(deleteAfter);

    while (--n >= 0) {
        targetElement.innerText = phrase.slice(0, n);
        await pause(deleteSpeed);
    }
}

export const runTyper = async ({ typeSpeed = 100, deleteSpeed = 50, deleteAfter = 2000, pauseAfterPhrase = 300 } = {}) => {
    const typerElement = document.getElementById('typer');
    const phrases = typerElement?.dataset.items?.split(',')?.map(it => it.trim());
    if (!typerElement || !phrases || phrases.length === 0) {
        return;
    }

    let currentPhraseIndex = 0;
    while (true) {
        await typePhraseAndDelete(phrases[currentPhraseIndex], typerElement, { typeSpeed, deleteSpeed, deleteAfter });
        await pause(pauseAfterPhrase);

        currentPhraseIndex++;
        if (currentPhraseIndex >= phrases.length) {
            currentPhraseIndex = 0;
        }
    }
};
