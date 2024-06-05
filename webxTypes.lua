type HtmlElement = {
    on_click: (callback: () -> ()) -> (),
    on_input: (callback: () -> ()) -> (),
    on_submit: (callback: () -> ()) -> (),
    get_content: () -> string,
    set_content: (content: string) -> (),
    get_href: () -> string,
    set_href: (href: string) -> (),
    get_source: () -> string,
    set_source: (source: string) -> (),
    get_opacity: () -> number,
    set_opacity: (opacity: number) -> (),
    set_visible: (visible: boolean) -> (),
}

type FetchOptions = {
    url: string,
    method: string,
    headers: {},
    body: string,
}

declare function print(message: string)
declare function get(class: string): HtmlElement
declare function fetch(options: FetchOptions): string
declare function set_timeout(ms: number, callback: () -> ())
declare function time(): number

declare json: {
    stringify: (jsonContent: {}) -> string,
    parse: (content: string) -> {string}
}