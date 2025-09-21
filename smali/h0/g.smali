.class public Lh0/g;
.super Ljava/lang/Object;
.source "ByteBufferBitmapDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/k<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh0/n;


# direct methods
.method public constructor <init>(Lh0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/g;->a:Lh0/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/g;->c(Ljava/nio/ByteBuffer;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lh0/g;->d(Ljava/nio/ByteBuffer;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/nio/ByteBuffer;IILx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu0/a;->f(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lh0/g;->a:Lh0/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/n;->f(Ljava/io/InputStream;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/nio/ByteBuffer;Lx/i;)Z
    .locals 0

    iget-object p0, p0, Lh0/g;->a:Lh0/n;

    invoke-virtual {p0, p1}, Lh0/n;->q(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method
