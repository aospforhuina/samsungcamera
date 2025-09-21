.class public abstract enum Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;
.super Ljava/lang/Enum;
.source "GppmStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "GppmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

.field public static final enum READY:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

.field public static final enum STARTED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

.field public static final enum STOPPED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

.field public static final enum STOPPING:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$1;

    const-string v1, "READY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$1;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/processor/gppm/a;)V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->READY:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$2;

    const-string v4, "STARTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$2;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/processor/gppm/b;)V

    sput-object v1, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STARTED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    .line 3
    new-instance v4, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$3;

    const-string v6, "STOPPING"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$3;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/processor/gppm/c;)V

    sput-object v4, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STOPPING:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    .line 4
    new-instance v6, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$4;

    const-string v8, "STOPPED"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v3}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState$4;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/processor/gppm/d;)V

    sput-object v6, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->STOPPED:Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    .line 5
    sput-object v3, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->$VALUES:[Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/processor/gppm/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->$VALUES:[Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/processor/gppm/GppmStateManager$GppmState;

    return-object v0
.end method


# virtual methods
.method abstract updateState(Landroid/content/Context;)Z
.end method

.method updateState(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateState(Context context, Bundle resultBundle) not supported in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
