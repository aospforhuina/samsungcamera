.class public Lq0/f;
.super Lq0/a;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq0/a<",
        "Lq0/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq0/a;-><init>()V

    return-void
.end method

.method public static i0(Ljava/lang/Class;)Lq0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lq0/f;"
        }
    .end annotation

    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    invoke-virtual {v0, p0}, Lq0/a;->g(Ljava/lang/Class;)Lq0/a;

    move-result-object p0

    check-cast p0, Lq0/f;

    return-object p0
.end method

.method public static j0(La0/j;)Lq0/f;
    .locals 1

    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    invoke-virtual {v0, p0}, Lq0/a;->h(La0/j;)Lq0/a;

    move-result-object p0

    check-cast p0, Lq0/f;

    return-object p0
.end method

.method public static k0(Lx/f;)Lq0/f;
    .locals 1

    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    invoke-virtual {v0, p0}, Lq0/a;->Z(Lx/f;)Lq0/a;

    move-result-object p0

    check-cast p0, Lq0/f;

    return-object p0
.end method
