.class public final synthetic Lcom/samsung/android/camera/core2/maker/ym;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/maker/MakerBase$ApplyRepeatingKeyExecutor;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ym;->a:Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ym;->a:Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;->A4(Lcom/samsung/android/camera/core2/maker/SuperNightPhotoMaker;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
