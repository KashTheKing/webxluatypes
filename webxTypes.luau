type HtmlElement = {
    name: string,
    on_click: (callback: () -> ()) -> (),
    on_input: (callback: () -> ()) -> (),
    on_submit: (callback: () -> ()) -> (),
    get_css_name: () -> string,
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
    headers: { [string]: string }?,
    body: string?,
}

type Timeout = {}

declare function print(message: string)
declare function get(class: string, getAll: boolean?): HtmlElement
declare function fetch(options: FetchOptions): string
declare function set_timeout(callback: () -> (), milliseconds: number): number
declare function clear_timeout(id: number): ()
declare function time(): number

declare window: {
    link: string,
    query: {}
}

declare json: {
    stringify: (jsonContent: {}) -> string,
    parse: (content: string) -> {string}
}