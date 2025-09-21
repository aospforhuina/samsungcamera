.class public Ll0/d;
.super Ljava/lang/Object;
.source "GifDrawableEncoder.java"

# interfaces
.implements Lx/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/l<",
        "Ll0/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/i;)Lx/c;
    .locals 0

    sget-object p0, Lx/c;->a:Lx/c;

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/File;Lx/i;)Z
    .locals 0

    check-cast p1, La0/v;

    invoke-virtual {p0, p1, p2, p3}, Ll0/d;->c(La0/v;Ljava/io/File;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(La0/v;Ljava/io/File;Lx/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "Ll0/c;",
            ">;",
            "Ljava/io/File;",
            "Lx/i;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll0/c;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ll0/c;->c()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p2}, Lu0/a;->e(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string p2, "GifEncoder"

    .line 3
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to encode GIF drawable data"

    .line 4
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
