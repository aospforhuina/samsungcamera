.class Lc7/a2;
.super Lc7/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc7/a<",
        "Lk6/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln6/g;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lc7/a;-><init>(Ln6/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected S(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lc7/a;->getContext()Ln6/g;

    move-result-object p0

    invoke-static {p0, p1}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
