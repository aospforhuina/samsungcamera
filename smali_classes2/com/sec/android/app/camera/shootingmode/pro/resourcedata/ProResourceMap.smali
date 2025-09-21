.class public Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;
.super Ljava/lang/Object;
.source "ProResourceMap.java"


# static fields
.field private static final mAudioPanelResourceIdSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final mControlPanelResourceIdSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFocusPanelResourceIdSetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWhiteBalanceIconResourceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->initializeControlPanelResourceIdSetMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mControlPanelResourceIdSetMap:Ljava/util/HashMap;

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->initializeWhiteBalanceIconResourceIdMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mWhiteBalanceIconResourceIdMap:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->initializeAudioPanelResourceIdSetMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mAudioPanelResourceIdSetMap:Ljava/util/HashMap;

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->initializeFocusPanelResourceIdSetMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mFocusPanelResourceIdSetMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioPanelResourceIdSet(I)Lx5/e$b;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mAudioPanelResourceIdSetMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx5/e$b;

    return-object p0
.end method

.method public static getControlPanelResourceIdSet(I)Lx5/e$b;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mControlPanelResourceIdSetMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx5/e$b;

    return-object p0
.end method

.method public static getFocusPanelResourceIdSet(I)Lx5/e$b;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mFocusPanelResourceIdSetMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx5/e$b;

    return-object p0
.end method

.method public static getWhiteBalanceIconResourceId(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/resourcedata/ProResourceMap;->mWhiteBalanceIconResourceIdMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static initializeAudioPanelResourceIdSetMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    sget-object v9, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    const v4, 0x7f080729

    const v5, 0x7f1200e4

    const/4 v6, 0x0

    const v7, 0x7f08072a

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f08072b

    const v5, 0x7f1200e5

    const v7, 0x7f08072c

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f08072d

    const v5, 0x7f1200e6

    const v7, 0x7f08072e

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lu3/b;->O:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lx5/e$b;

    const v4, 0x7f080731

    const v5, 0x7f1200e8

    const/4 v6, 0x0

    const v7, 0x7f080732

    move-object v2, v1

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lx5/e$b;

    const v4, 0x7f08072f

    const v5, 0x7f1200e7

    const/4 v6, 0x0

    const v7, 0x7f080730

    move-object v2, v1

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f080727

    const v5, 0x7f1200e1

    const/4 v6, 0x0

    const v7, 0x7f080728

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f080725

    const v5, 0x7f1200e3

    const v7, 0x7f080726

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeControlPanelResourceIdSetMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lx5/e$b;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    const v5, 0x7f080529

    const v6, 0x7f120114

    const/4 v7, 0x0

    const v8, 0x7f080528

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v4, 0x7f080485

    const v5, 0x7f1202fe

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f120568

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f1202a6

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f1202c6

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f120675

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f08052a

    const v6, 0x7f1201a2

    invoke-direct {v3, v5, v6, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lx5/e$b;

    const v5, 0x7f120680

    invoke-direct {v3, v4, v5, v1}, Lx5/e$b;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeFocusPanelResourceIdSetMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lx5/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    sget-object v9, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    const v4, 0x7f08073f

    const v5, 0x7f1202c7

    const/4 v6, 0x0

    const v7, 0x7f080740

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f080743

    const v5, 0x7f1202c9

    const v7, 0x7f080744

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f080745

    const v5, 0x7f1202ca

    const v7, 0x7f080746

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lx5/e$b;

    const v4, 0x7f080741

    const v5, 0x7f1202c8

    const v7, 0x7f080742

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lx5/e$b;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeWhiteBalanceIconResourceIdMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1c

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08052e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08052d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x37

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08052c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x41

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f08052b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
