.class public Lcom/samsung/android/camera/core2/container/DynamicShotMode$PropertyPolicy;
.super Ljava/lang/Object;
.source "DynamicShotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/DynamicShotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyPolicy"
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->c:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    sget-object v1, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->b:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    .line 2
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$PropertyPolicy;->a:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->u:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    sget-object v1, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->s:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    .line 5
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->t:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    .line 6
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {v0, v2, v3, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$PropertyPolicy;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
