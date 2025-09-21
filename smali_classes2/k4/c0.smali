.class public Lk4/c0;
.super Lk4/d0;
.source "SOCRecognizer.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk4/d0;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lk4/t;)V

    const-string p0, "SOCRecognizer"

    const-string p1, "SpenRecognizer(SOCRecognizer) is created"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk4/d0;->f(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lk4/d0;->g(Landroid/graphics/Bitmap;Lk4/j;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lk4/d0;->c()V

    const-string p0, "SOCRecognizer"

    const-string v0, "SOCRecognizer destroyed"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
