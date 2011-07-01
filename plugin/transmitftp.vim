
<!-- saved from url=(0068)https://raw.github.com/namjul/vim-repo/master/plugin/transmitftp.vim -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="chromesniffer" id="chromesniffer_meta" content=""><script type="text/javascript" src="chrome-extension://homgcnaoacgigpkkljjjekpignblkeae/detector.js"></script></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">fun! TransmitFtpSendFile()
    let TransmitFtpFileName = expand("%:p")
    let TransmitFtpAppleScript = split(&amp;runtimepath, ",")[0] . "/apple/send_to_transmit.applescript"
    silent exec '!osascript "' . TransmitFtpAppleScript . '" "' . TransmitFtpFileName . '"'
    echo "File " . TransmitFtpFileName . " sent to Transmit" 
endfunction

nnoremap &lt;C-S-U&gt; :call TransmitFtpSendFile()&lt;CR&gt;
</pre></body></html>