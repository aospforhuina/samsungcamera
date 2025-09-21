.class final Le7/a$e;
.super Lkotlin/coroutines/jvm/internal/c;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le7/a;->g(Ln6/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x279
    }
    m = "receiveCatching-JP2dKIU"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Le7/a;Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/a<",
            "TE;>;",
            "Ln6/d<",
            "-",
            "Le7/a$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le7/a$e;->b:Le7/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Ln6/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le7/a$e;->a:Ljava/lang/Object;

    iget p1, p0, Le7/a$e;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le7/a$e;->c:I

    iget-object p1, p0, Le7/a$e;->b:Le7/a;

    invoke-virtual {p1, p0}, Le7/a;->g(Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Le7/i;->b(Ljava/lang/Object;)Le7/i;

    move-result-object p0

    return-object p0
.end method
