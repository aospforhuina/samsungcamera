.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentUriTriggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/work/Constraints$ContentUriTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private requiredNetworkType:Landroidx/work/NetworkType;

.field private requiresBatteryNotLow:Z

.field private requiresCharging:Z

.field private requiresDeviceIdle:Z

.field private requiresStorageNotLow:Z

.field private triggerContentMaxDelay:J

.field private triggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 4
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Constraints;)V
    .locals 2

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 9
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    .line 11
    invoke-virtual {p1}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    .line 12
    invoke-virtual {p1}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    .line 13
    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 14
    invoke-virtual {p1}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    .line 15
    invoke-virtual {p1}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    .line 16
    invoke-virtual {p1}, Landroidx/work/Constraints;->getContentTriggerUpdateDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 17
    invoke-virtual {p1}, Landroidx/work/Constraints;->getContentTriggerMaxDelayMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 18
    invoke-virtual {p1}, Landroidx/work/Constraints;->getContentUriTriggers()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ll6/q;->J(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addContentUriTrigger(Landroid/net/Uri;Z)Landroidx/work/Constraints$Builder;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    new-instance v1, Landroidx/work/Constraints$ContentUriTrigger;

    invoke-direct {v1, p1, p2}, Landroidx/work/Constraints$ContentUriTrigger;-><init>(Landroid/net/Uri;Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/work/Constraints;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    invoke-static {v0}, Ll6/q;->K(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    .line 2
    iget-wide v7, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 3
    iget-wide v9, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 4
    iget-boolean v3, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    .line 5
    iget-boolean v0, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 6
    iget-object v2, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 7
    iget-boolean v5, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    .line 8
    iget-boolean v6, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    .line 9
    new-instance p0, Landroidx/work/Constraints;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-object p0
.end method

.method public final setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    return-object p0
.end method

.method public final setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    return-object p0
.end method

.method public final setRequiresCharging(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    return-object p0
.end method

.method public final setRequiresDeviceIdle(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    return-object p0
.end method

.method public final setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    return-object p0
.end method

.method public final setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    return-object p0
.end method

.method public final setTriggerContentMaxDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .locals 2

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    return-object p0
.end method

.method public final setTriggerContentUpdateDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/Constraints$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    return-object p0
.end method

.method public final setTriggerContentUpdateDelay(Ljava/time/Duration;)Landroidx/work/Constraints$Builder;
    .locals 2

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroidx/work/impl/utils/DurationApi26Impl;->toMillisCompat(Ljava/time/Duration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    return-object p0
.end method
