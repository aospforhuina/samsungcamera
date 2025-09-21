.class Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$DummyLens;
.super Ljava/lang/Object;
.source "FunPresenter.java"

# interfaces
.implements Lcom/snap/camerakit/lenses/LensesComponent$Lens;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyLens"
.end annotation


# instance fields
.field lensId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$DummyLens;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$DummyLens;->lensId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFacingPreference()Lcom/snap/camerakit/lenses/LensesComponent$Lens$Facing;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter$DummyLens;->lensId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreview()Lcom/snap/camerakit/lenses/LensesComponent$Lens$Preview;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVendorData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
