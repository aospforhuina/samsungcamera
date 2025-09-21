.class public Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;
.super Ljava/lang/Object;
.source "PetDetectionInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PetDetectionTotalInfo"
.end annotation


# instance fields
.field private final a:[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;->a:[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method public b()[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/PetDetectionInfoCallback$PetDetectionTotalInfo;->a:[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    return-object p0
.end method
