.class Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap$1;
.super Ljava/util/EnumMap;
.source "NodeFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;",
        "Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap$1;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->D:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    new-instance p2, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->p:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;Lcom/samsung/android/camera/core2/node/e0;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->J:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    new-instance p2, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->d0:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;Lcom/samsung/android/camera/core2/node/e0;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->H:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    new-instance p2, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->b0:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;Lcom/samsung/android/camera/core2/node/e0;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->I:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    new-instance p2, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->c0:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;Lcom/samsung/android/camera/core2/node/e0;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
