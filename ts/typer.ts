interface TyperOptions {
    typeSpeed: number;
    deleteSpeed: number;
    deleteAfter: number;
    pauseAfterPhrase: number
}

const pause = (pauseTime: number) => new Promise(resolve => setTimeout(resolve, pauseTime));

const typePhraseAndDelete = async (phrase: string, targetElement: HTMLElement, { typeSpeed, deleteSpeed, deleteAfter }: TyperOptions) => {
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

const runTyper = async (targetElement: HTMLElement, options: TyperOptions) => {
    const phrases = targetElement.dataset.items?.split(',')?.map(it => it.trim());
    if (!phrases || phrases.length === 0) {
        return;
    }

    let currentPhraseIndex = 0;
    while (true) {
        await typePhraseAndDelete(phrases[currentPhraseIndex], targetElement, options);
        await pause(options.pauseAfterPhrase);

        currentPhraseIndex++;
        if (currentPhraseIndex >= phrases.length) {
            currentPhraseIndex = 0;
        }
    }
}

export const runTypers = ({ typeSpeed = 100, deleteSpeed = 50, deleteAfter = 2000, pauseAfterPhrase = 300 }: Partial<TyperOptions> = {}) => {
    document.querySelectorAll('[data-typer]').forEach(item => {
        runTyper(item as HTMLElement, { typeSpeed, deleteSpeed, deleteAfter, pauseAfterPhrase });
    });
};
