.class final enum Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;
.super Ljava/lang/Enum;
.source "SingleTakeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/SingleTakeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BuffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

.field public static final enum MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

.field public static final enum PREVIEW:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->PREVIEW:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    const-string v3, "MAIN_CAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->$VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->$VALUES:[Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    return-object v0
.end method
