.class public Lk4/f0;
.super Lk4/d0;
.source "SOCRecognizer_OneUI41.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk4/d0;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V

    const-string p0, "SOCRecognizer_OneUI41"

    const-string p1, "SpenRecognizer(SOCRecognizer_OneUI41) is created!"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected d(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;)V
    .locals 0

    const-string p0, "SOCRecognizer_OneUI41"

    const-string p1, "Moire Detector is not Used"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e()V
    .locals 1

    const-string p0, "SOCRecognizer_OneUI41"

    const-string v0, "Moire Detector is not Used"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
