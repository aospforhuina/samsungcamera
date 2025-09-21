.class public final Lc7/p;
.super Lc7/n1;
.source "JobSupport.kt"


# instance fields
.field public final f:Lc7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc7/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc7/n1;-><init>()V

    .line 2
    iput-object p1, p0, Lc7/p;->f:Lc7/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lc7/p;->v(Ljava/lang/Throwable;)V

    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lc7/p;->f:Lc7/l;

    invoke-virtual {p0}, Lc7/r1;->w()Lc7/s1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc7/l;->t(Lc7/l1;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc7/l;->E(Ljava/lang/Throwable;)V

    return-void
.end method
