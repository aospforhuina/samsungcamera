.class public Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;
.super Ljava/lang/Object;
.source "SceneDetectorParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvizinsight/atl/vzimageclassifier/SceneDetectorParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;->x:I

    .line 3
    iput p2, p0, Lvizinsight/atl/vzimageclassifier/SceneDetectorParam$Point;->y:I

    return-void
.end method
