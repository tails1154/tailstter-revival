.class public final Lcom/twitter/android/client/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/widget/a;
.implements Ll;


# static fields
.field private static final e:Z

.field private static f:Lcom/twitter/android/client/i;


# instance fields
.field public final a:Lbe;

.field final b:Landroid/content/Context;

.field c:Z

.field public d:I

.field private final g:Landroid/util/SparseArray;

.field private final h:Landroid/util/SparseArray;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/HashMap;

.field private final k:Lcom/twitter/android/client/k;

.field private final l:Lcom/twitter/android/service/e;

.field private final m:F

.field private n:Landroid/media/SoundPool;

.field private o:[I

.field private p:Ldf;

.field private final q:Ljava/util/HashMap;

.field private r:Ljava/lang/String;

.field private final s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AC"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/client/i;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/client/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/c;-><init>(Lcom/twitter/android/client/i;)V

    iput-object v0, p0, Lcom/twitter/android/client/i;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/i;->j:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    new-instance v1, Ldk;

    invoke-direct {v1, p1, v4}, Ldk;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ldk;

    invoke-direct {v1, p1, v3}, Ldk;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lbe;

    invoke-direct {v0, p1, p0}, Lbe;-><init>(Landroid/content/Context;Ll;)V

    iput-object v0, p0, Lcom/twitter/android/client/i;->a:Lbe;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/client/i;->h:Landroid/util/SparseArray;

    new-instance v1, Li;

    invoke-direct {v1, v4}, Li;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Li;

    invoke-direct {v1, v3}, Li;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/twitter/android/client/k;

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldk;

    invoke-direct {v1, p1, v0, p0}, Lcom/twitter/android/client/k;-><init>(Landroid/content/Context;Ldk;Lcom/twitter/android/client/i;)V

    iput-object v1, p0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    new-instance v0, Lcom/twitter/android/client/b;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/b;-><init>(Lcom/twitter/android/client/i;)V

    new-instance v1, Lcom/twitter/android/service/e;

    invoke-direct {v1, v0}, Lcom/twitter/android/service/e;-><init>(Lcom/twitter/android/service/a;)V

    iput-object v1, p0, Lcom/twitter/android/client/i;->l:Lcom/twitter/android/service/e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/twitter/android/client/i;->m:F

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1, v5}, Landroid/media/SoundPool;-><init>(III)V

    const/4 v1, 0x4

    new-array v1, v1, [I

    const v2, 0x7f060001

    invoke-virtual {v0, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v5

    const v2, 0x7f060002

    invoke-virtual {v0, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v4

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x3

    const v3, 0x7f060003

    invoke-virtual {v0, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/twitter/android/client/i;->o:[I

    iput-object v0, p0, Lcom/twitter/android/client/i;->n:Landroid/media/SoundPool;

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4

    const v3, 0x7f09003d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f0900c0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f09003f

    :goto_1
    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900be

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    const v2, 0x7f0900bf

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/i;
    .locals 3

    const-class v0, Lcom/twitter/android/client/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/twitter/android/client/i;->f:Lcom/twitter/android/client/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/android/client/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/client/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/twitter/android/client/i;->f:Lcom/twitter/android/client/i;

    :cond_0
    sget-object v1, Lcom/twitter/android/client/i;->f:Lcom/twitter/android/client/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/twitter/android/client/n;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/i;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    const-string v0, "auth"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lab;

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lac;

    iget-object v2, v4, Lac;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/n;Ljava/lang/String;Lab;Lac;Lbv;Z)V

    invoke-static {v4}, Ldb;->a(Lac;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->g()Lab;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Lab;Ljava/lang/String;)Landroid/accounts/Account;

    invoke-virtual {p1, v6}, Lcom/twitter/android/client/n;->a(Z)V

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Lab;Ljava/lang/String;ZZ)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v0, v1, v7}, Lcom/twitter/android/platform/f;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    :goto_2
    move-object v0, v5

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    goto :goto_2
.end method

.method private a(Lcom/twitter/android/client/n;Ljava/lang/String;Lab;Lac;Lbv;Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/d;->c:Lcom/twitter/android/client/d;

    invoke-virtual {p1, v1}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    invoke-virtual {p1, p4}, Lcom/twitter/android/client/n;->a(Lac;)V

    invoke-virtual {p1, p2}, Lcom/twitter/android/client/n;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/twitter/android/client/n;->a(Lab;)V

    if-nez p5, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->m()Ljava/lang/String;

    :goto_0
    if-eqz p6, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "unread_tweets"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "unread_mentions"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "unread_direct_messages"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "GET_UNREAD"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    :cond_0
    const-string v1, "polling_interval"

    const-string v2, "60"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/i;->c(I)V

    const-string v1, "CONFIG"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    const-string v1, "DECIDER"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    invoke-virtual {v1}, Lcom/twitter/android/client/k;->a()V

    const-string v1, "sound_effects"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/client/i;->c:Z

    const-string v1, "font_size"

    const-string v2, "14"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/client/i;->d:I

    iget-object v1, p0, Lcom/twitter/android/client/i;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :cond_1
    invoke-virtual {p1, p5}, Lcom/twitter/android/client/n;->a(Lbv;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    invoke-static {v0}, Lci;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/twitter/android/client/i;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "AC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/i;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ibinder"

    iget-object v3, p0, Lcom/twitter/android/client/i;->l:Lcom/twitter/android/service/e;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "auth"

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->g()Lab;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unread_tweets"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unread_mentions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private g(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unread_direct_messages"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private v()Lcom/twitter/android/client/n;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/twitter/android/client/n;

    invoke-direct {v1}, Lcom/twitter/android/client/n;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private w()I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/i;->a(Z)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Z)I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->p:Ldf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/i;->p:Ldf;

    iget v0, v0, Ldf;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/i;->p:Ldf;

    iget v0, v0, Ldf;->a:I

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final a()J
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->e()Lac;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "http://twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const v3, 0x7f090048

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lac;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lac;->f:Ljava/lang/String;

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v0, 0x3

    aput-object p4, v4, v0

    const/4 v0, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f090040

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IJ)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk;

    invoke-virtual {p0, p2, p3}, Ldk;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/twitter/android/client/i;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "_normal."

    const-string v1, "_bigger."

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk;

    invoke-virtual {p0, p2, p3, v0}, Ldk;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/provider/ah;)Landroid/graphics/Bitmap;
    .locals 4

    iget v0, p1, Lcom/twitter/android/provider/ah;->s:I

    iget-wide v1, p1, Lcom/twitter/android/provider/ah;->m:J

    iget-object v3, p1, Lcom/twitter/android/provider/ah;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJ[B)Laz;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Li;->a(Ljava/lang/Long;[B)Laz;

    move-result-object v0

    return-object v0
.end method

.method public final a(DDLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "REVERSE_GEO"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "long"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "accuracy"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_BLOCKING"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJ)Ljava/lang/String;
    .locals 4

    const-string v0, "ADD_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJI)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJJ)Ljava/lang/String;
    .locals 3

    const-string v0, "IS_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJJI)Ljava/lang/String;
    .locals 2

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_FRIENDSHIP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JI)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_FAVS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JII)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJI)Ljava/lang/String;
    .locals 3

    const-string v0, "HOME"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->e()Lac;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJJJII)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST_TWEETS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "RETWEET"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "EDIT_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "desc"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_SLUG_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "q"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZ)Ljava/lang/String;
    .locals 4

    const-string v0, "FOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "device_follow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-string v0, "SEARCH_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "count"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "CREATE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "desc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GET_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JDDLjava/lang/String;Laz;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/twitter/android/client/f;->b(Landroid/content/Context;I)V

    const-string v0, "TWEET"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/i;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/d;->b:Lcom/twitter/android/client/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    const-string v0, "LOGIN"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pass"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const-string v3, "SEARCH_TWEETS"

    invoke-direct {p0, v3}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "q_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "q"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "since_id"

    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "count"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "max_id"

    invoke-virtual {v3, v4, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "show_user"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "geo"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "place"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "page"

    move-object v0, v3

    move-object v1, v4

    move/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "lang"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "locale"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "q_type"

    move-object v0, v3

    move-object v1, v4

    move/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UPDATE_PROFILE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "place"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "desc"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SIGNUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "screen_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "email"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pass"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q_name"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([J)Ljava/lang/String;
    .locals 2

    const-string v0, "DELETE_DMS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "LOOKUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/n;->a(Lab;)V

    return-void
.end method

.method public final a(Lac;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/n;->a(Lac;)V

    return-void
.end method

.method public final a(Lan;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldk;

    invoke-virtual {v0, p1}, Ldk;->a(Lan;)V

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk;

    invoke-virtual {p0, p1}, Ldk;->a(Lan;)V

    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .locals 20

    const-string v4, "sid"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/client/n;

    if-nez v5, :cond_1

    const-string v4, "AC"

    const-string v5, "Expired session. Ignoring response"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    const-string v4, "rid"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "action_code"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v4, "resp_code"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "reason_phrase"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    new-array v0, v0, [Lcom/twitter/android/client/m;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->j:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    sget-boolean v4, Lcom/twitter/android/client/i;->e:Z

    if-eqz v4, :cond_2

    const-string v4, "AC"

    const-string v6, "Handling unknown action."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v7

    :goto_1
    const-string v6, "rate_limit"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lak;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/n;->a(Lak;)V

    const/16 v5, 0x191

    if-ne v4, v5, :cond_0

    sparse-switch v15, :sswitch_data_0

    const-string v4, "VERIFY"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_3

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->g(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->j:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->e(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->f(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->g(I)V

    sget-object v4, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    invoke-virtual {v5, v4}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/twitter/android/client/k;->b()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v8, v4

    :goto_3
    if-ge v8, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    move-object v4, v0

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldk;

    invoke-virtual {v4}, Ldk;->a()V

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->a:Lbe;

    move-object v4, v0

    invoke-virtual {v4}, Lbe;->a()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v6, v0

    const-string v4, "alarm"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/client/AppService;

    invoke-direct {v8, v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.twitter.android.cleanup"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/client/AppService;

    invoke-direct {v8, v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.twitter.android.poll.alarm"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v9, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    move-object v8, v0

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->r:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v6}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;)V

    :cond_5
    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->s:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-object v6, v0

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    move v4, v7

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "status_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_6
    :pswitch_3
    move v4, v7

    goto/16 :goto_1

    :pswitch_4
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_4
    if-ge v12, v11, :cond_7

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->i(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_4

    :cond_7
    move v4, v7

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_8

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->m(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    move v4, v7

    goto/16 :goto_1

    :pswitch_6
    const-string v4, "new_tweet"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v4, "unread_mention"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v4, "since_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const/16 v4, 0xc8

    if-ne v7, v4, :cond_9

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->f(I)V

    :cond_9
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    aget-object v4, v16, v18

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_6

    :cond_a
    move v4, v7

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_b

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->n(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    move v4, v7

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v4, :cond_c

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->o(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_c
    move v4, v7

    goto/16 :goto_1

    :pswitch_9
    const-string v4, "new_tweet"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_9
    if-ge v11, v10, :cond_d

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_9

    :cond_d
    move v4, v7

    goto/16 :goto_1

    :pswitch_a
    const-string v4, "status_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_a
    if-ge v12, v11, :cond_6

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->g(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_a

    :pswitch_b
    const-string v4, "status_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_b
    if-ge v12, v11, :cond_e

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_b

    :cond_e
    move v4, v7

    goto/16 :goto_1

    :pswitch_c
    const-string v4, "status_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_c
    if-ge v12, v11, :cond_f

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_c

    :cond_f
    move v4, v7

    goto/16 :goto_1

    :pswitch_d
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_d
    if-ge v12, v11, :cond_10

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->j(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_d

    :cond_10
    move v4, v7

    goto/16 :goto_1

    :pswitch_e
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "list_type"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_e
    if-ge v13, v12, :cond_11

    aget-object v4, v16, v13

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/client/m;->d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_e

    :cond_11
    move v4, v7

    goto/16 :goto_1

    :pswitch_f
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "user_type"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_f
    if-ge v13, v12, :cond_12

    aget-object v4, v16, v13

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_f

    :cond_12
    move v4, v7

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v4, :cond_13

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->h(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_13
    move v4, v7

    goto/16 :goto_1

    :pswitch_11
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x2

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/twitter/android/client/i;->a(JJI)Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v4, :cond_14

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->i(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_14
    move v4, v7

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v4, :cond_15

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->j(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_15
    move v4, v7

    goto/16 :goto_1

    :pswitch_13
    const-string v4, "new_dm"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "unread_dm"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v4, 0xc8

    if-ne v7, v4, :cond_16

    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->g(I)V

    :cond_16
    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_13
    if-ge v12, v11, :cond_17

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_13

    :cond_17
    move v4, v7

    goto/16 :goto_1

    :pswitch_14
    const-string v4, "unread_tweet"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "unread_mention"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "unread_dm"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->e(I)V

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->f(I)V

    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->g(I)V

    move v4, v7

    goto/16 :goto_1

    :pswitch_15
    const-string v4, "user"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lac;

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_14
    if-ge v11, v10, :cond_18

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Lac;)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_14

    :cond_18
    move v4, v7

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v4, :cond_19

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->e(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_19
    move v4, v7

    goto/16 :goto_1

    :pswitch_17
    const-string v4, "url"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "short_url"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move v4, v7

    goto/16 :goto_1

    :pswitch_18
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_16
    if-ge v12, v11, :cond_1a

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->h(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_16

    :cond_1a
    move v4, v7

    goto/16 :goto_1

    :pswitch_19
    const-string v4, "user"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lac;

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_17
    if-ge v11, v10, :cond_1b

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Lac;)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_17

    :cond_1b
    move v4, v7

    goto/16 :goto_1

    :pswitch_1a
    const/16 v4, 0xc8

    if-ne v7, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v4, v0

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/twitter/android/client/k;->a(Z)V

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const/16 v9, 0x3e9

    invoke-static {v4, v9}, Lcom/twitter/android/client/f;->c(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v4, :cond_1d

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->f(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v9, 0x7f0900cc

    const/4 v10, 0x0

    invoke-static {v4, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_18

    :cond_1d
    move v4, v7

    goto/16 :goto_1

    :pswitch_1b
    const/16 v4, 0xc8

    if-ne v7, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v4, v0

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/twitter/android/client/k;->a(Z)V

    :cond_1e
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v4, :cond_1f

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_1f
    move v4, v7

    goto/16 :goto_1

    :pswitch_1c
    const-string v4, "status_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v4, 0xc8

    if-ne v7, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v4, v0

    invoke-virtual {v4, v9, v10}, Lcom/twitter/android/client/k;->a(J)V

    :cond_20
    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_1b
    if-ge v12, v11, :cond_21

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1b

    :cond_21
    move v4, v7

    goto/16 :goto_1

    :pswitch_1d
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v4, 0xc8

    if-eq v7, v4, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v11, 0x7f09004d

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_22
    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_1c
    if-ge v12, v11, :cond_23

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->e(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1c

    :cond_23
    move v4, v7

    goto/16 :goto_1

    :pswitch_1e
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_1d
    if-ge v12, v11, :cond_24

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->f(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1d

    :cond_24
    move v4, v7

    goto/16 :goto_1

    :pswitch_1f
    const-string v4, "user_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v4, 0xc8

    if-eq v7, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v11, 0x7f09004f

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_25
    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_1e
    if-ge v12, v11, :cond_26

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1e

    :cond_26
    move v4, v7

    goto/16 :goto_1

    :pswitch_20
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v6, 0x7f090072

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    goto/16 :goto_1

    :pswitch_21
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v6, 0x7f090073

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    goto/16 :goto_1

    :pswitch_22
    const/16 v4, 0xc8

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v6, 0x7f090061

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    goto/16 :goto_1

    :pswitch_23
    const-string v4, "list_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_1f
    if-ge v12, v11, :cond_27

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->k(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_1f

    :cond_27
    move v4, v7

    goto/16 :goto_1

    :pswitch_24
    const-string v4, "list_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "user_type"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_20
    if-ge v13, v12, :cond_28

    aget-object v4, v16, v13

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_20

    :cond_28
    move v4, v7

    goto/16 :goto_1

    :pswitch_25
    const-string v4, "list_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v4, "user_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_21
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_29

    aget-object v4, v16, v17

    invoke-virtual/range {v4 .. v13}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_21

    :cond_29
    move v4, v7

    goto/16 :goto_1

    :pswitch_26
    const-string v4, "list_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v4, "user_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_22
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_2a

    aget-object v4, v16, v17

    invoke-virtual/range {v4 .. v13}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_22

    :cond_2a
    move v4, v7

    goto/16 :goto_1

    :pswitch_27
    const-string v4, "list_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v4, "user_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "user_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_23
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_2b

    aget-object v4, v16, v17

    invoke-virtual/range {v4 .. v13}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_23

    :cond_2b
    move v4, v7

    goto/16 :goto_1

    :pswitch_28
    const-string v4, "q_type"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_24
    if-ge v11, v10, :cond_2c

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_24

    :cond_2c
    move v4, v7

    goto/16 :goto_1

    :pswitch_29
    const-string v4, "search_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "page"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    const/4 v4, 0x0

    move v13, v4

    :goto_25
    if-ge v13, v12, :cond_2d

    aget-object v4, v16, v13

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_25

    :cond_2d
    move v4, v7

    goto/16 :goto_1

    :pswitch_2a
    const-string v4, "search_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v11, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_26
    if-ge v12, v11, :cond_2e

    aget-object v4, v16, v12

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/m;->l(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_26

    :cond_2e
    move v4, v7

    goto/16 :goto_1

    :pswitch_2b
    const/16 v4, 0xc8

    if-ne v7, v4, :cond_2f

    const-string v4, "user"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lac;

    invoke-virtual {v5, v4}, Lcom/twitter/android/client/n;->a(Lac;)V

    move v4, v7

    goto/16 :goto_1

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    const v6, 0x7f090030

    const/4 v8, 0x1

    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    goto/16 :goto_1

    :pswitch_2c
    const-string v4, "lat"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v4, "long"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v4, "place"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_27
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_30

    aget-object v4, v16, v17

    invoke-virtual/range {v4 .. v13}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_27

    :cond_30
    move v4, v7

    goto/16 :goto_1

    :pswitch_2d
    const/16 v4, 0x191

    if-ne v7, v4, :cond_2

    const-string v4, "AC"

    const-string v6, "Invalid credentials. The auth token has expired."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v5}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v8, v9, v4}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v4, "com.twitter.android.auth.login"

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "com.twitter.android.oauth.token"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move v4, v7

    goto/16 :goto_1

    :pswitch_2e
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/n;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v9, v4

    :goto_28
    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_29
    if-ge v11, v10, :cond_31

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_29

    :catch_0
    move-exception v7

    const/16 v8, 0x190

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v9, v4

    move-object/from16 v19, v7

    move v7, v8

    move-object/from16 v8, v19

    goto :goto_28

    :cond_31
    move v4, v7

    goto/16 :goto_1

    :pswitch_2f
    const-string v4, "new_tweet"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v4, "unread_tweet"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v4, "since_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const/16 v4, 0xc8

    if-ne v7, v4, :cond_33

    const-wide/16 v17, 0x0

    cmp-long v4, v11, v17

    if-nez v4, :cond_32

    if-lez v13, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v4, v0

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/k;->a(Z)V

    :cond_32
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->e(I)V

    :cond_33
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_2a
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_34

    aget-object v4, v16, v18

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_2a

    :cond_34
    move v4, v7

    goto/16 :goto_1

    :pswitch_30
    const-string v4, "count"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v16

    array-length v0, v0

    move v10, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_2b
    if-ge v11, v10, :cond_35

    aget-object v4, v16, v11

    invoke-virtual/range {v4 .. v9}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2b

    :cond_35
    move v4, v7

    goto/16 :goto_1

    :pswitch_31
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_2c
    if-ge v9, v4, :cond_36

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->k(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :cond_36
    move v4, v7

    goto/16 :goto_1

    :pswitch_32
    const-string v4, "owner_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "list_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v0, v0

    move v13, v0

    const/4 v4, 0x0

    move v14, v4

    :goto_2d
    if-ge v14, v13, :cond_37

    aget-object v4, v16, v14

    invoke-virtual/range {v4 .. v12}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJ)V

    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_2d

    :cond_37
    move v4, v7

    goto/16 :goto_1

    :pswitch_33
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_2e
    if-ge v9, v4, :cond_38

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->l(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_38
    move v4, v7

    goto/16 :goto_1

    :pswitch_34
    const-string v4, "name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "screen_name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "email"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "pass"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "q_name"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "q"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/n;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2f
    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_30
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_39

    aget-object v4, v16, v17

    invoke-virtual/range {v4 .. v13}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto :goto_30

    :catch_1
    move-exception v4

    const/16 v4, 0x190

    move v7, v4

    goto :goto_2f

    :cond_39
    move v4, v7

    goto/16 :goto_1

    :pswitch_35
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, -0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/client/i;->a(JJI)Ljava/lang/String;

    move v4, v7

    goto/16 :goto_1

    :pswitch_36
    const-string v4, "settings"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ldf;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/twitter/android/client/i;->p:Ldf;

    move v4, v7

    goto/16 :goto_1

    :pswitch_37
    const/16 v4, 0xc8

    if-ne v7, v4, :cond_2

    const-string v4, "settings"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lbv;

    invoke-virtual {v5, v4}, Lcom/twitter/android/client/n;->a(Lbv;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v5}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9, v4}, Lcom/twitter/android/platform/f;->a(Landroid/content/Context;Ljava/lang/String;Lac;Lbv;)V

    move v4, v7

    goto/16 :goto_1

    :pswitch_38
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v4, :cond_3a

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_3a
    move v4, v7

    goto/16 :goto_1

    :pswitch_39
    const-string v4, "settings"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lau;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v6, v0

    iget-boolean v8, v4, Lau;->a:Z

    iget-wide v9, v4, Lau;->b:J

    invoke-static {v6, v8, v9, v10}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;ZJ)V

    move v4, v7

    goto/16 :goto_1

    :pswitch_3a
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_32
    if-ge v9, v4, :cond_3b

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    :cond_3b
    move v4, v7

    goto/16 :goto_1

    :pswitch_3b
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v4, :cond_3c

    aget-object v10, v16, v9

    invoke-virtual {v10, v5, v6, v7, v8}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_3c
    move v4, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public final a(Lax;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/client/m;

    invoke-virtual {p0, p2}, Lcom/twitter/android/client/m;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/m;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JJLaz;)V
    .locals 4

    const-string v0, "SAVE_DRAFT"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method final a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 19

    const-string v5, "type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "unread"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v6, "new"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v6, "sample"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v0, v7

    new-array v0, v0, [Lcom/twitter/android/client/m;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v7, "com.twitter.android.poll.statuses"

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    move-object v5, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/twitter/android/client/k;->a(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v5, v0

    const/4 v7, 0x1

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move v3, v15

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)Landroid/app/Notification;

    :cond_1
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->e(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v5, 0x0

    move/from16 v18, v5

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v5, v16, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    goto :goto_1

    :sswitch_1
    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v5, v0

    const/4 v7, 0x2

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move v3, v15

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)Landroid/app/Notification;

    :cond_2
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->f(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v5, 0x0

    move/from16 v18, v5

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v5, v16, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/client/m;->b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    goto :goto_2

    :cond_3
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-lez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    move-object v5, v0

    const/4 v7, 0x4

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move v3, v15

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/f;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)Landroid/app/Notification;

    :cond_4
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/twitter/android/client/i;->g(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_0

    aget-object v9, v16, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/twitter/android/client/m;->a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/twitter/android/provider/ah;)Laz;
    .locals 4

    iget v0, p1, Lcom/twitter/android/provider/ah;->C:I

    iget-wide v1, p1, Lcom/twitter/android/provider/ah;->r:J

    iget-object v3, p1, Lcom/twitter/android/provider/ah;->w:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(IJ[B)Laz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJJ)Ljava/lang/String;
    .locals 4

    const-string v0, "REMOVE_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Ljava/lang/String;
    .locals 4

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JII)Ljava/lang/String;
    .locals 4

    const-string v0, "GET_LISTS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJI)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "GET_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SAVE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Ljava/lang/String;
    .locals 3

    const-string v0, "UPDATE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b([J)Ljava/lang/String;
    .locals 4

    const-string v0, "FOLLOW_ALL"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/k;->a(I)V

    return-void
.end method

.method public final b(Lan;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldk;

    invoke-virtual {v0, p1}, Ldk;->b(Lan;)V

    iget-object v0, p0, Lcom/twitter/android/client/i;->g:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk;

    invoke-virtual {p0, p1}, Ldk;->b(Lan;)V

    return-void
.end method

.method public final b(Lcom/twitter/android/client/m;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lab;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->g()Lab;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Ljava/lang/String;
    .locals 4

    const-string v0, "DESTROY_STATUS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJI)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "GET_SENT_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "CREATE_FAV"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DELETE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(I)V
    .locals 8

    const/4 v1, 0x0

    const v0, 0xea60

    mul-int/2addr v0, p1

    int-to-long v4, v0

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-class v6, Lcom/twitter/android/client/AppService;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.twitter.android.poll.alarm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-string v3, "sid"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final d(I)I
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/twitter/android/client/i;->c:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/i;->n:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/twitter/android/client/i;->o:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Ljava/lang/String;
    .locals 2

    const-string v0, "DESTROY_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "DESTROY_FAV"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/i;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const-string v1, "rid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twitter/android/client/i;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/twitter/android/client/n;
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/client/i;->q:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/twitter/android/client/i;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {p0}, Lcom/twitter/android/client/i;->v()Lcom/twitter/android/client/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/client/i;->r:Ljava/lang/String;

    array-length v3, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v2, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "account_user_info"

    invoke-virtual {v0, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "account_user_info"

    invoke-virtual {v0, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_4

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/n;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/n;->a(Z)V

    invoke-virtual {p0, v2, v4}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    :cond_0
    :goto_1
    monitor-exit v7

    return-object v0

    :cond_1
    move v6, v9

    goto :goto_0

    :cond_2
    invoke-static {v0, v3}, Lcom/twitter/android/platform/f;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {v8}, Ldb;->c(Ljava/lang/String;)Lac;

    move-result-object v4

    invoke-static {v5}, Lbv;->a(Ljava/lang/String;)Lbv;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/n;Ljava/lang/String;Lab;Lac;Lbv;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v2, Lcom/twitter/android/client/i;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "AC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final e(J)Ljava/lang/String;
    .locals 4

    const-string v0, "UNFOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)Ljava/lang/String;
    .locals 4

    const-string v0, "CREATE_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->c()Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/twitter/android/client/d;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->a()Lcom/twitter/android/client/d;

    move-result-object v0

    return-object v0
.end method

.method public final g(J)Ljava/lang/String;
    .locals 4

    const-string v0, "DESTROY_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()J
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(J)Ljava/lang/String;
    .locals 4

    const-string v0, "REPORT_SPAM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->a()Lcom/twitter/android/client/d;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/client/d;->c:Lcom/twitter/android/client/d;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/twitter/android/client/d;->d:Lcom/twitter/android/client/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/n;->a(Lcom/twitter/android/client/d;)V

    const-string v0, "LOGOUT"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final i(J)Ljava/lang/String;
    .locals 4

    const-string v0, "DELETE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "GET_SAVED_SEARCHES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(J)Ljava/lang/String;
    .locals 2

    const-string v0, "GET_TRENDS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 4

    const-string v0, "SEND_ALL_DRAFTS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/i;->w()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final k(J)V
    .locals 4

    const-string v0, "DEL_DRAFT"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "GET_SLUG"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "GET_SETTINGS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unread_tweets"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/twitter/android/client/i;->e(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lci;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_TWEETS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sid"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "i_type"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final p()I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unread_mentions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->f(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lci;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_TWEETS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sid"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->f()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "i_type"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final r()I
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "unread_direct_messages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/i;->g(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lci;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_MESSAGES"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sid"

    invoke-virtual {p0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/client/i;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method final t()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    invoke-virtual {v0}, Lcom/twitter/android/client/k;->c()V

    return-void
.end method

.method final u()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/i;->k:Lcom/twitter/android/client/k;

    invoke-virtual {v0}, Lcom/twitter/android/client/k;->d()V

    return-void
.end method
