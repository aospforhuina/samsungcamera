.class public final Landroidx/activity/contextaware/ContextAwareKt;
.super Ljava/lang/Object;
.source "ContextAware.kt"


# direct methods
.method public static final withContextAvailable(Landroidx/activity/contextaware/ContextAware;Lu6/l;Ln6/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/contextaware/ContextAware;",
            "Lu6/l<",
            "-",
            "Landroid/content/Context;",
            "+TR;>;",
            "Ln6/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/activity/contextaware/ContextAware;->peekAvailableContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lc7/l;

    invoke-static {p2}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc7/l;-><init>(Ln6/d;I)V

    .line 4
    invoke-virtual {v0}, Lc7/l;->x()V

    .line 5
    new-instance v1, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v1, v0, p0, p1}, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lc7/k;Landroidx/activity/contextaware/ContextAware;Lu6/l;)V

    .line 6
    invoke-interface {p0, v1}, Landroidx/activity/contextaware/ContextAware;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 7
    new-instance v2, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2;

    invoke-direct {v2, v1, p0, p1}, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;Landroidx/activity/contextaware/ContextAware;Lu6/l;)V

    invoke-interface {v0, v2}, Lc7/k;->c(Lu6/l;)V

    .line 8
    invoke-virtual {v0}, Lc7/l;->u()Ljava/lang/Object;

    move-result-object p0

    .line 9
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->c(Ln6/d;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static final withContextAvailable$$forInline(Landroidx/activity/contextaware/ContextAware;Lu6/l;Ln6/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p0}, Landroidx/activity/contextaware/ContextAware;->peekAvailableContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lu6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/k;->c(I)V

    .line 4
    new-instance v0, Lc7/l;

    invoke-static {p2}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc7/l;-><init>(Ln6/d;I)V

    .line 5
    invoke-virtual {v0}, Lc7/l;->x()V

    .line 6
    new-instance v1, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v1, v0, p0, p1}, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lc7/k;Landroidx/activity/contextaware/ContextAware;Lu6/l;)V

    .line 7
    invoke-interface {p0, v1}, Landroidx/activity/contextaware/ContextAware;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 8
    new-instance v3, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2;

    invoke-direct {v3, v1, p0, p1}, Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Landroidx/activity/contextaware/ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$1;Landroidx/activity/contextaware/ContextAware;Lu6/l;)V

    invoke-interface {v0, v3}, Lc7/k;->c(Lu6/l;)V

    .line 9
    invoke-virtual {v0}, Lc7/l;->u()Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->c(Ln6/d;)V

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/k;->c(I)V

    :goto_0
    return-object p0
.end method
