//
// Created by Neil Connatty on 2016-12-06.
// Copyright (c) 2016 ___BCCHILDRENSHOSPITAL___. All rights reserved.
//

import Foundation
import PubNub

class PubNubInterface
{
    static let sharedInstance = PubNubInterface()

    let MSG_CHANNEL: String = "bcch"
    let INPUT_CHANNEL: String = "input"

    var client: PubNub!

    private init()
    {
        let configuration = PNConfiguration(publishKey: "pub-c-ffee06f7-78b5-483c-b800-fae8f3a67f0c", subscribeKey: "sub-c-3dc063c8-9bc0-11e6-814f-0619f8945a4f")
        self.client = PubNub.clientWithConfiguration(configuration)
    }

    func sendMessage (msg: String)
    {
        client.publish(msg, toChannel: MSG_CHANNEL, compressed: false, withCompletion: { (status) in
            if !status.isError {
                // TODO handle successful publish
            } else {
                // TODO handle error
            }
        })
    }

    func sendInput (input: String)
    {
        client.publish(input, toChannel: INPUT_CHANNEL, compressed: false, withCompletion: { (status) in
            if !status.isError {
                // TODO handle successful publsh
            } else {
                // TODO handle error
            }
        })
    }

    func showImage ()
    {
        sendInput(input: "show image")
    }

    func hideImage ()
    {
        sendInput(input: "hide image")
    }

    func zoomImage ()
    {
        sendInput(input: "zoom image")
    }

    func reloadImage ()
    {
        sendInput(input: "reload image")
    }

    func uploadImage ()
    {
        sendInput(input: "upload image")
    }

    func scrollLeft ()
    {
        sendInput(input: "scroll left")
    }

    func scrollRight ()
    {
        sendInput(input: "scroll right")
    }

    func flipView ()
    {
        sendInput(input: "flip view")
    }

    /* Not needed
    func hideOrShowImage ()
    {
        sendInput(input: "hide or show image")
    }

    func toggleFunction ()
    {
        sendInput(input: "toggle function")
    }
    */
}
