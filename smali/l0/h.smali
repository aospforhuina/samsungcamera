.class public final Ll0/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/k<",
        "Lw/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb0/d;


# direct methods
.method public constructor <init>(Lb0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll0/h;->a:Lb0/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Lw/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Ll0/h;->c(Lw/a;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Lw/a;

    invoke-virtual {p0, p1, p2}, Ll0/h;->d(Lw/a;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(Lw/a;IILx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw/a;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lw/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p0, p0, Ll0/h;->a:Lb0/d;

    invoke-static {p1, p0}, Lh0/e;->d(Landroid/graphics/Bitmap;Lb0/d;)Lh0/e;

    move-result-object p0

    return-object p0
.end method

.method public d(Lw/a;Lx/i;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
