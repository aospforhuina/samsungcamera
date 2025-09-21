.class public Lh0/a0;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh0/n;

.field private final b:Lb0/b;


# direct methods
.method public constructor <init>(Lh0/n;Lb0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/a0;->a:Lh0/n;

    .line 3
    iput-object p2, p0, Lh0/a0;->b:Lb0/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/a0;->c(Ljava/io/InputStream;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lh0/a0;->d(Ljava/io/InputStream;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/io/InputStream;IILx/i;)La0/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lh0/x;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lh0/x;

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lh0/x;

    iget-object v1, p0, Lh0/a0;->b:Lb0/b;

    invoke-direct {v0, p1, v1}, Lh0/x;-><init>(Ljava/io/InputStream;Lb0/b;)V

    const/4 p1, 0x1

    move-object v8, v0

    move v0, p1

    move-object p1, v8

    .line 4
    :goto_0
    invoke-static {p1}, Lu0/d;->b(Ljava/io/InputStream;)Lu0/d;

    move-result-object v1

    .line 5
    new-instance v3, Lu0/h;

    invoke-direct {v3, v1}, Lu0/h;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance v7, Lh0/a0$a;

    invoke-direct {v7, p1, v1}, Lh0/a0$a;-><init>(Lh0/x;Lu0/d;)V

    .line 7
    :try_start_0
    iget-object v2, p0, Lh0/a0;->a:Lh0/n;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lh0/n;->g(Ljava/io/InputStream;IILx/i;Lh0/n$b;)La0/v;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Lu0/d;->d()V

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lh0/x;->d()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {v1}, Lu0/d;->d()V

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lh0/x;->d()V

    :cond_2
    throw p0
.end method

.method public d(Ljava/io/InputStream;Lx/i;)Z
    .locals 0

    iget-object p0, p0, Lh0/a0;->a:Lh0/n;

    invoke-virtual {p0, p1}, Lh0/n;->p(Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method
