.class public interface abstract Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract$View;
.super Ljava/lang/Object;
.source "ManualBeautyListContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/interfaces/BaseContract$View<",
        "Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setAdapter(Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListAdapter;)V
.end method

.method public abstract setItemClickListener(Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract$ItemClickListener;)V
.end method

.method public abstract updateChildBackground(I)V
.end method
