#import "@preview/glossarium:0.4.0": make-glossary, print-glossary, gls

// Has to be run before the glossary is printed.
#show: make-glossary

#let gls-short(key) = gls(key, long: false)

#let glossary() = [
  #heading(numbering: none)[Glossary]

  #print-glossary(
    (
      (
        key: "chatgpt",
        short: "ChatGPT",
        desc: "ChatGPT is a large language model trained by OpenAI. https://chat.openai.com/"
      ),
    ),
    show-all: true,
    disable-back-references: true,
  ),
]
