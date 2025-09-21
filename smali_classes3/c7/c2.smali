.class public final Lc7/c2;
.super Ljava/lang/Object;
.source "Supervisor.kt"


# direct methods
.method public static final a(Lc7/l1;)Lc7/t;
    .locals 1

    new-instance v0, Lc7/b2;

    invoke-direct {v0, p0}, Lc7/b2;-><init>(Lc7/l1;)V

    return-object v0
.end method

.method public static synthetic b(Lc7/l1;ILjava/lang/Object;)Lc7/t;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lc7/c2;->a(Lc7/l1;)Lc7/t;

    move-result-object p0

    return-object p0
.end method
