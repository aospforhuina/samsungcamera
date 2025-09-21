.class public Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;
.super Ljava/lang/Object;
.source "SamsungAnalyticsLogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SALogUtil"

.field private static mScreenId:Ljava/lang/String; = "701"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendSALog(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSALog screenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SALogUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lv4/i;->b()Lv4/i;

    move-result-object v0

    new-instance v1, Lv4/e;

    invoke-direct {v1}, Lv4/e;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lv4/e;->j(Ljava/lang/String;)Lv4/e;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Lv4/e;->h(Ljava/lang/String;)Lv4/e;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lv4/e;->a()Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lv4/i;->g(Ljava/util/Map;)I

    return-void
.end method

.method public static sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSALog screenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SALogUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "det"

    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lv4/i;->b()Lv4/i;

    move-result-object p1

    new-instance v1, Lv4/e;

    invoke-direct {v1}, Lv4/e;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Lv4/e;->j(Ljava/lang/String;)Lv4/e;

    move-result-object v1

    .line 12
    invoke-virtual {v1, p0}, Lv4/e;->h(Ljava/lang/String;)Lv4/e;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v0}, Lv4/e;->f(Ljava/util/Map;)Lv4/e;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lv4/e;->a()Ljava/util/Map;

    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Lv4/i;->g(Ljava/util/Map;)I

    return-void
.end method

.method public static setSAScreenId(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSAScreenId screenID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SALogUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p0, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    .line 3
    invoke-static {}, Lv4/i;->b()Lv4/i;

    move-result-object p0

    new-instance v0, Lv4/g;

    invoke-direct {v0}, Lv4/g;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->mScreenId:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lv4/g;->f(Ljava/lang/String;)Lv4/g;

    move-result-object v0

    invoke-virtual {v0}, Lv4/g;->a()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lv4/i;->g(Ljava/util/Map;)I

    return-void
.end method
