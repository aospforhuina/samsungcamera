.class final Lc7/u1;
.super Lc7/a2;
.source "Builders.common.kt"


# instance fields
.field private final c:Ln6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/d<",
            "Lk6/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g;Lu6/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Lu6/p<",
            "-",
            "Lc7/g0;",
            "-",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc7/a2;-><init>(Ln6/g;Z)V

    .line 2
    invoke-static {p2, p0, p0}, Lo6/b;->a(Lu6/p;Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p1

    iput-object p1, p0, Lc7/u1;->c:Ln6/d;

    return-void
.end method


# virtual methods
.method protected i0()V
    .locals 1

    iget-object v0, p0, Lc7/u1;->c:Ln6/d;

    invoke-static {v0, p0}, Lh7/a;->b(Ln6/d;Ln6/d;)V

    return-void
.end method
