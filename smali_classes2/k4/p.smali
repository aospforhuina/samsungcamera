.class public Lk4/p;
.super Ljava/lang/Object;
.source "RecognizerAPIChecker.java"


# direct methods
.method private static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "RecognizerAPIChecker"

    const-string v0, "Input bitmap is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lk4/j;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "RecognizerAPIChecker"

    const-string v0, "Input parameter for result container is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-static {p0}, Lk4/p;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/graphics/Bitmap;Lk4/j;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lk4/p;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p1}, Lk4/p;->b(Lk4/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
