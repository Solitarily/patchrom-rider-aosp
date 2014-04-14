.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final LOCK_STYLE_ECLAIR:I = 0x3

.field private static final LOCK_STYLE_GB:I = 0x2

.field private static final LOCK_STYLE_ICS:I = 0x1

.field private static final LOCK_STYLE_JB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mCarrier:Landroid/widget/TextView;

.field mDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private final mHasVibrator:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenStyle:I

.field private mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSilentMode:Z

.field private mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

.field mTabTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field mWaveTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_style"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockscreenStyle:I

    .line 81
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 128
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTabTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    .line 150
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    .line 169
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mWaveTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    .line 211
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 224
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 247
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 249
    .local v0, vibrator:Landroid/os/Vibrator;
    if-nez v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHasVibrator:Z

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    .line 251
    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 8
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 519
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR1:Ljava/lang/Runnable;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    .line 527
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 530
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR1:Ljava/lang/Runnable;

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    return-void
.end method

.method private toggleRingMode()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    .line 328
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x10400fa

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v3, :cond_2

    const v2, 0x10802dd

    .line 335
    .local v2, toastIcon:I
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x106003f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 338
    .local v1, toastColor:I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCarrier:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 340
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v3, :cond_5

    .line 341
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mHasVibrator:Z

    if-eqz v6, :cond_4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 347
    :goto_5
    return-void

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toastColor:I
    .end local v2           #toastIcon:I
    :cond_0
    move v3, v5

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x10400fb

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 332
    .restart local v0       #message:Ljava/lang/String;
    :cond_2
    const v2, 0x10802de

    goto :goto_2

    .line 335
    .restart local v2       #toastIcon:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1060040

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    .restart local v1       #toastColor:I
    :cond_4
    move v4, v5

    .line 341
    goto :goto_4

    .line 345
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_5
.end method

.method private updateTargets()V
    .locals 14

    .prologue
    .line 356
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 357
    .local v2, currentUserHandle:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 358
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 359
    .local v5, disabledFeatures:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 361
    .local v10, secureCameraDisabled:Z
    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 363
    .local v0, cameraDisabledByAdmin:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 364
    .local v7, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 365
    .local v4, disabledBySimState:Z
    const v11, 0x10802e2

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v1

    .line 367
    .local v1, cameraTargetPresent:Z
    const v11, 0x1080294

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v9

    .line 370
    .local v9, searchTargetPresent:Z
    if-eqz v0, :cond_6

    .line 371
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Device Policy"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_setup_complete"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v3, 0x1

    .line 380
    .local v3, currentUserSetup:Z
    :goto_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    .line 383
    .local v8, searchActionAvailable:Z
    :goto_4
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    if-nez v3, :cond_9

    :cond_2
    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 385
    if-nez v4, :cond_3

    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    if-nez v3, :cond_a

    :cond_3
    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateResources()V

    .line 388
    return-void

    .line 359
    .end local v0           #cameraDisabledByAdmin:Z
    .end local v1           #cameraTargetPresent:Z
    .end local v3           #currentUserSetup:Z
    .end local v4           #disabledBySimState:Z
    .end local v7           #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v8           #searchActionAvailable:Z
    .end local v9           #searchTargetPresent:Z
    .end local v10           #secureCameraDisabled:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 361
    .restart local v10       #secureCameraDisabled:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 372
    .restart local v0       #cameraDisabledByAdmin:Z
    .restart local v1       #cameraTargetPresent:Z
    .restart local v4       #disabledBySimState:Z
    .restart local v7       #monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v9       #searchTargetPresent:Z
    :cond_6
    if-eqz v4, :cond_1

    .line 373
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Sim State"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 375
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 380
    .restart local v3       #currentUserSetup:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 383
    .restart local v8       #searchActionAvailable:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 385
    :cond_a
    const/4 v11, 0x0

    goto :goto_6
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 456
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 458
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 507
    return-void
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x10802d7

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 255
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 256
    const v1, 0x10202b2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 258
    const v1, 0x10202bf

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mWaveTriggerListener:Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 260
    const v1, 0x1020303

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTab;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mTabTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 262
    const v1, 0x10202d3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RotarySelector;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mDialTriggerListener:Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RotarySelector;->setOnDialTriggerListener(Lcom/android/internal/widget/RotarySelector$OnDialTriggerListener;)V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->updateTargets()V

    .line 266
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockscreenStyle:I

    packed-switch v1, :pswitch_data_0

    .line 302
    const-string v1, "SecuritySelectorView"

    const-string v2, "Error: Unknown lockscreen style."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    .line 306
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 307
    const v1, 0x1020300

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 309
    return-void

    .line 268
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x1040328

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    const v2, 0x10803b5

    const v3, 0x1080396

    const v4, 0x10803a9

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/RotarySelector;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/RotarySelector;->setLeftHandleResource(I)V

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 483
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 488
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 473
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 2
    .parameter "carrierArea"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    const v1, 0x10202a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCarrier:Landroid/widget/TextView;

    .line 314
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 462
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 466
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 500
    return-void
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 353
    return-void
.end method

.method public updateResources()V
    .locals 12

    .prologue
    const v8, 0x10802d6

    const v6, 0x10802d5

    const v11, 0x1080294

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 391
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockscreenStyle:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 392
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    if-ne v9, v5, :cond_1

    .line 395
    .local v5, vibe:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSlidingTabView:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_0

    const v6, 0x10802d8

    :cond_0
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v7, :cond_3

    const v7, 0x10803b7

    :goto_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v8, :cond_4

    const v8, 0x10803a0

    :goto_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v9, :cond_5

    const v9, 0x10803b3

    :goto_4
    invoke-virtual {v10, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 450
    .end local v5           #vibe:Z
    :goto_5
    return-void

    :cond_1
    move v5, v7

    .line 392
    goto :goto_0

    .restart local v5       #vibe:Z
    :cond_2
    move v6, v8

    .line 395
    goto :goto_1

    :cond_3
    const v7, 0x10803b4

    goto :goto_2

    :cond_4
    const v8, 0x108039f

    goto :goto_3

    :cond_5
    const v9, 0x10803b2

    goto :goto_4

    .line 405
    .end local v5           #vibe:Z
    :cond_6
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockscreenStyle:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_a

    .line 406
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    if-ne v9, v5, :cond_7

    .line 409
    .restart local v5       #vibe:Z
    :goto_6
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v7, :cond_9

    if-eqz v5, :cond_8

    const v1, 0x10802d8

    .line 412
    .local v1, iconId:I
    :goto_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mRotarySelectorView:Lcom/android/internal/widget/RotarySelector;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/RotarySelector;->setRightHandleResource(I)V

    goto :goto_5

    .end local v1           #iconId:I
    .end local v5           #vibe:Z
    :cond_7
    move v5, v7

    .line 406
    goto :goto_6

    .restart local v5       #vibe:Z
    :cond_8
    move v1, v6

    .line 409
    goto :goto_7

    :cond_9
    move v1, v8

    goto :goto_7

    .line 413
    .end local v5           #vibe:Z
    :cond_a
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mLockscreenStyle:I

    if-ne v6, v5, :cond_d

    .line 415
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-eqz v6, :cond_c

    .line 417
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSilentMode:Z

    if-eqz v6, :cond_b

    const v4, 0x1070009

    .line 422
    .local v4, resId:I
    :goto_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    goto :goto_5

    .line 417
    .end local v4           #resId:I
    :cond_b
    const v4, 0x107000c

    goto :goto_8

    .line 420
    :cond_c
    const v4, 0x107000e

    .restart local v4       #resId:I
    goto :goto_8

    .line 425
    .end local v4           #resId:I
    :cond_d
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_e

    .line 426
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const-string v8, "search"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mContext:Landroid/content/Context;

    const/4 v9, -0x2

    invoke-virtual {v6, v8, v9}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 428
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_e

    .line 432
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 433
    .local v0, component:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v8, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v6, v0, v8, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 437
    .local v3, replaced:Z
    if-nez v3, :cond_e

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v8, "com.android.systemui.action_assist_icon"

    invoke-virtual {v6, v0, v8, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_e

    .line 440
    const-string v6, "SecuritySelectorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t grab icon from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #replaced:Z
    :cond_e
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v9, 0x10802e2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v6, :cond_f

    move v6, v5

    :goto_9
    invoke-virtual {v8, v9, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 447
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v8, :cond_10

    :goto_a
    invoke-virtual {v6, v11, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    goto/16 :goto_5

    :cond_f
    move v6, v7

    .line 445
    goto :goto_9

    :cond_10
    move v5, v7

    .line 447
    goto :goto_a
.end method
