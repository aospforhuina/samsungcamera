.class public final synthetic Lcom/samsung/android/camera/core2/processor/postSaving/module/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->a:Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->c:I

    iput p4, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->d:I

    iput-object p5, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->e:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->a:Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->c:I

    iget v3, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->d:I

    iget-object v4, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/c;->e:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;->a(Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecoveryDataSave;Ljava/lang/String;IILcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/jsonData/PostProcessRecoveryData$Builder;)V

    return-void
.end method
