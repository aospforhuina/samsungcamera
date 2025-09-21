.class public final Lkotlinx/coroutines/internal/e;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lc7/g0;


# instance fields
.field private final a:Ln6/g;


# direct methods
.method public constructor <init>(Ln6/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->a:Ln6/g;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ln6/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/e;->a:Ln6/g;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineScope(coroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->getCoroutineContext()Ln6/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
