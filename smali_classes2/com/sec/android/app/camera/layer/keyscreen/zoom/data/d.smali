.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->c:I

    iput p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->c:I

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/d;->d:I

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;->k(Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomCurveData;Ljava/util/ArrayList;II[Ljava/lang/String;)V

    return-void
.end method
