.class public abstract Ln6/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ln6/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Ln6/g$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Ln6/g$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "Ln6/g$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Ln6/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g$c;Lu6/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "TB;>;",
            "Lu6/l<",
            "-",
            "Ln6/g$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln6/b;->a:Lu6/l;

    .line 3
    instance-of p2, p1, Ln6/b;

    if-eqz p2, :cond_0

    check-cast p1, Ln6/b;

    iget-object p1, p1, Ln6/b;->b:Ln6/g$c;

    :cond_0
    iput-object p1, p0, Ln6/b;->b:Ln6/g$c;

    return-void
.end method


# virtual methods
.method public final a(Ln6/g$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object p0, p0, Ln6/b;->b:Ln6/g$c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b(Ln6/g$b;)Ln6/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$b;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ln6/b;->a:Lu6/l;

    invoke-interface {p0, p1}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln6/g$b;

    return-object p0
.end method
