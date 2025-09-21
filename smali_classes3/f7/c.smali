.class final Lf7/c;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Lf7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf7/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lf7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lu6/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf7/d;Lu6/l;Lu6/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/d<",
            "+TT;>;",
            "Lu6/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lu6/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf7/c;->a:Lf7/d;

    .line 3
    iput-object p2, p0, Lf7/c;->b:Lu6/l;

    .line 4
    iput-object p3, p0, Lf7/c;->c:Lu6/p;

    return-void
.end method


# virtual methods
.method public collect(Lf7/e;Ln6/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/e<",
            "-TT;>;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/w;

    invoke-direct {v0}, Lkotlin/jvm/internal/w;-><init>()V

    sget-object v1, Lg7/b;->a:Lkotlinx/coroutines/internal/a0;

    iput-object v1, v0, Lkotlin/jvm/internal/w;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lf7/c;->a:Lf7/d;

    new-instance v2, Lf7/c$a;

    invoke-direct {v2, p0, v0, p1}, Lf7/c$a;-><init>(Lf7/c;Lkotlin/jvm/internal/w;Lf7/e;)V

    invoke-interface {v1, v2, p2}, Lf7/d;->collect(Lf7/e;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0
.end method
