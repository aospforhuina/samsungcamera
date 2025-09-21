.class public Lm0/d;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lm0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm0/e<",
        "Ll0/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/v;Lx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "Ll0/c;",
            ">;",
            "Lx/i;",
            ")",
            "La0/v<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll0/c;

    .line 2
    invoke-virtual {p0}, Ll0/c;->c()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    new-instance p1, Li0/b;

    invoke-static {p0}, Lu0/a;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Li0/b;-><init>([B)V

    return-object p1
.end method
