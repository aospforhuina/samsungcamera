.class public abstract Lg0/a;
.super Ljava/lang/Object;
.source "ImageDecoderResourceDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx/k<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lh0/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lh0/s;->a()Lh0/s;

    move-result-object v0

    iput-object v0, p0, Lg0/a;->a:Lh0/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg0/a;->d(Landroid/graphics/ImageDecoder$Source;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2}, Lg0/a;->e(Landroid/graphics/ImageDecoder$Source;Lx/i;)Z

    move-result p0

    return p0
.end method

.method protected abstract c(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)La0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "La0/v<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final d(Landroid/graphics/ImageDecoder$Source;IILx/i;)La0/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lh0/n;->f:Lx/h;

    invoke-virtual {p4, v0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lx/b;

    .line 2
    sget-object v0, Lh0/m;->h:Lx/h;

    invoke-virtual {p4, v0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lh0/m;

    .line 3
    sget-object v0, Lh0/n;->j:Lx/h;

    .line 4
    invoke-virtual {p4, v0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p4, v0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 6
    sget-object v0, Lh0/n;->g:Lx/h;

    invoke-virtual {p4, v0}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Lx/j;

    .line 7
    new-instance p4, Lg0/a$a;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lg0/a$a;-><init>(Lg0/a;IIZLx/b;Lh0/m;Lx/j;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lg0/a;->c(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public final e(Landroid/graphics/ImageDecoder$Source;Lx/i;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
