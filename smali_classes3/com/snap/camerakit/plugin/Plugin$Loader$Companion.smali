.class public final Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/camerakit/plugin/Plugin$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

.field private static final KNOWN_API_CLASS_NAME:Ljava/lang/String; = "com.snap.camerakit.Session"

.field private static final KNOWN_SIGNERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_CACHE_DIR_NAME:Ljava/lang/String; = "camera_kit_native_cache"

.field private static final TAG:Ljava/lang/String; = "Loader"

.field private static final TAINTED_CLASS_LOADERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    invoke-direct {v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;-><init>()V

    sput-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->$$INSTANCE:Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->TAINTED_CLASS_LOADERS:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "B6BC922024898FF10485CE443297D41150B54743E9659F1B4E8B89263F7D32E4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "5CEF4AA98AB8CE1FDB609722791742448808C8E808342176FBD2356526127FA2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AD254ED980DB1F7BF632A6BEC0CDFA05606735C6ABF7549D317EBFE391166578"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->KNOWN_SIGNERS:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAINTED_CLASS_LOADERS$p()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->TAINTED_CLASS_LOADERS:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic from$default(Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "com.snap.camerakit.plugin.v1"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->KNOWN_SIGNERS:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 0

    new-instance p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$failing$1;

    invoke-direct {p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$failing$1;-><init>(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)V

    return-object p0
.end method

.method public final from(Landroid/content/Context;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from$default(Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public final from(Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 0

    new-instance p0, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;

    invoke-direct {p0, p2, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$2;-><init>(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    return-object p0
.end method

.method public final from(Landroid/content/Context;Ljava/lang/String;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->from$default(Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    return-object p0
.end method

.method public final from(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/snap/camerakit/plugin/Plugin$Loader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/snap/camerakit/plugin/Plugin$Loader;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lj6/f;->f:Lj6/f$a;

    const-string v2, "1.15.2"

    invoke-virtual {v1, v2}, Lj6/f$a;->a(Ljava/lang/String;)Lj6/f;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lj6/f$a;->b(Ljava/lang/String;)Lj6/f;

    move-result-object v1

    invoke-static {p1, p2}, Lj6/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    :cond_2
    new-instance p3, Ljava/util/LinkedHashSet;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p3, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_3

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v3, v4, :cond_3

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p3, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingPermissions;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host application is missing permissions required by the plugin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingPermissions;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_5

    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedVersion;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to determine plugin version from the provided package: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedVersion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lj6/f;->b()I

    move-result p3

    invoke-virtual {v2}, Lj6/f;->b()I

    move-result v3

    if-eq p3, v3, :cond_6

    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedVersion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Host built against the plugin version ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], while the available plugin version is ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]. Plugin and its host must share the same major version!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnsupportedVersion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingSignature;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not find signature to validate authenticity of the provided package: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingSignature;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnknownSignature;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin installed as the provided package ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] contains unknown signature(s): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$UnknownSignature;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    new-instance p3, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;

    invoke-direct {p3, p1, p2, v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion$from$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p3

    goto :goto_2

    :catch_0
    new-instance p1, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingInstallation;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Provided package is not installed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure$MissingInstallation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snap/camerakit/plugin/Plugin$Loader$Companion;->failing(Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object p0

    :goto_2
    return-object p0
.end method
