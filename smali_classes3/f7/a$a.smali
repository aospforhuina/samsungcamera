.class final Lf7/a$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/a;->c(Le7/s;Ln6/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    l = {
        0x150
    }
    m = "collectTo"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lf7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf7/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method constructor <init>(Lf7/a;Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/a<",
            "TT;>;",
            "Ln6/d<",
            "-",
            "Lf7/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf7/a$a;->c:Lf7/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Ln6/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lf7/a$a;->b:Ljava/lang/Object;

    iget p1, p0, Lf7/a$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf7/a$a;->d:I

    iget-object p1, p0, Lf7/a$a;->c:Lf7/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lf7/a;->c(Le7/s;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
