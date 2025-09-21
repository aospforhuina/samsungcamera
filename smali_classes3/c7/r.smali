.class public final Lc7/r;
.super Lc7/n1;
.source "JobSupport.kt"

# interfaces
.implements Lc7/q;


# instance fields
.field public final f:Lc7/s;


# direct methods
.method public constructor <init>(Lc7/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc7/n1;-><init>()V

    .line 2
    iput-object p1, p0, Lc7/r;->f:Lc7/s;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lc7/r1;->w()Lc7/s1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc7/s1;->F(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lc7/r;->v(Ljava/lang/Throwable;)V

    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lc7/r;->f:Lc7/s;

    invoke-virtual {p0}, Lc7/r1;->w()Lc7/s1;

    move-result-object p0

    invoke-interface {p1, p0}, Lc7/s;->u(Lc7/z1;)V

    return-void
.end method
