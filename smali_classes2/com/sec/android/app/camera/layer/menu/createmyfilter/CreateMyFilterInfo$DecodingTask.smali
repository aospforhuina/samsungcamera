.class Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;
.super Landroid/os/AsyncTask;
.source "CreateMyFilterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;Lcom/sec/android/app/camera/layer/menu/createmyfilter/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->b(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->a(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->this$0:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->a(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;->onBitmapInfoInitialized(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
