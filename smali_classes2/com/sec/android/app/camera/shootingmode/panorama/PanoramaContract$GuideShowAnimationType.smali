.class public final enum Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;
.super Ljava/lang/Enum;
.source "PanoramaContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuideShowAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

.field public static final enum CAPTURE_TO_PREVIEW:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

.field public static final enum FIRST_SHOW:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

.field public static final enum NONE:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

.field public static final enum PREVIEW_GUIDE_SIZE_CHANGED:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

.field public static final enum PREVIEW_TO_CAPTURE:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const-string v3, "FIRST_SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->FIRST_SHOW:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const-string v5, "PREVIEW_GUIDE_SIZE_CHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->PREVIEW_GUIDE_SIZE_CHANGED:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    new-instance v5, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const-string v7, "PREVIEW_TO_CAPTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->PREVIEW_TO_CAPTURE:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    new-instance v7, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const-string v9, "CAPTURE_TO_PREVIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->CAPTURE_TO_PREVIEW:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaContract$GuideShowAnimationType;

    return-object v0
.end method
