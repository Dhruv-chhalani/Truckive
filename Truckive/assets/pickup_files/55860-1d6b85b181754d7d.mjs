"use strict";(self.__LOADABLE_LOADED_CHUNKS__=self.__LOADABLE_LOADED_CHUNKS__||[]).push([[55860],{780678:(e,t,n)=>{n.d(t,{Z:()=>l,v:()=>i});let i=()=>"undefined"!=typeof navigator&&"getInstalledRelatedApps"in navigator;async function l(){if(!i())return[];try{let e=await navigator.getInstalledRelatedApps();return e}catch(e){return[]}}},430322:(e,t,n)=>{n.r(t),n.d(t,{default:()=>y});var i=n(667294),l=n(883119),a=n(283698),r=n(968121),o=n(898781),s=n(124580),d=n(780280),p=n(223815),u=n(867820),c=n(50286),m=n(965900),_=n(785893);let w=()=>{if(document.body){let{body:{style:e}}=document;e.overflow="hidden",e.touchAction="none"}},f=()=>{if(document.body){let{body:{style:e}}=document;e.overflow="visible",e.touchAction="auto"}};function y({accessibilityModalLabel:e,align:t="center",allowScroll:n=!1,children:y,closeOnOutsideClick:h=!0,footer:v,heading:b,isOpen:g,mobileAccessibilityCloseIconLabel:x,mobileHideCloseIcon:k,mobileIsFooter:j,mobileIsFullscreen:S,mobileIsSlideUp:A,onDismiss:Z,subHeading:C,type:I,zIndex:P}){let L=(0,o.ZP)(),{isRTL:R}=(0,d.B)(),U=(0,i.useRef)(!1),[N,O]=(0,i.useState)(!1),{setAppFocusState:E}=(0,m.I)(),T=(0,c.ZP)();return((0,i.useEffect)(()=>{(0,u.My)(`mweb_unauth.mobile_modal.${I||"unknown_type"}.did_mount.is_open.${String(!!g)}`)},[g,I]),(0,i.useEffect)(()=>(U.current=(0,a.Z)(()=>{U.current&&O(!0)}),()=>{"undefined"!=typeof window&&Object.prototype.hasOwnProperty.call(window,"cancelAnimationFrame")&&U.current&&(window.cancelAnimationFrame(U.current),U.current=null)}),[]),(0,i.useEffect)(()=>(g?(s.Z.pause(),E(!1)):(s.Z.resume(),E(!0)),()=>{g&&(s.Z.resume(),E(!0))}),[E,g]),(0,i.useEffect)(()=>{let e=g&&!n;return e&&w(),()=>{e&&f()}},[g,n]),g)?(0,_.jsx)(p.Z,{children:(0,_.jsx)(l.mh,{children:(0,_.jsxs)(l.xu,{"aria-label":e,display:"inlineBlock",zIndex:P||r.ZM,position:"relative",role:"dialog",children:[(0,_.jsx)(l.iP,{accessibilityLabel:L._('Mobile Signup Modal Mask', 'mweb.signup_modal.mask', 'The acessibility label for the mask of mobile signup modal'),onTap:({event:e})=>{e.clientX&&e.clientY&&(0,u.tj)(`mweb_unauth.mobile_modal.wash_tap.${I||"unknown_type"}.with_dismissal`,{x:e.clientX,y:e.clientY}),h&&Z()},tapStyle:"none",children:(0,_.jsx)(l.xu,{height:"100%",left:!0,position:"fixed",top:!0,width:"100%",zIndex:new l.Ry(1),dangerouslySetInlineStyle:{__style:{backgroundColor:"rgba(0, 0, 0, .5)",touchAction:"none",transitionProperty:"opacity",transitionTimingFunction:"ease-out"}}})}),(0,_.jsxs)(l.xu,{position:"fixed",color:"default","data-test-id":"mobile-signup-mask",dangerouslySetInlineStyle:A?(0,r.Vf)({isFullscreen:S,isTablet:"tablet"===T,isShowing:N,isRelatedInterestsModal:"related_interests_modal"===I}):(0,r.JN)({variant:S?"fullscreen":"tablet"===T?"tablet":j?"footer":"signup"===I?"signup":void 0}),children:[(0,_.jsxs)(l.kC,{alignItems:"center",justifyContent:"start",width:"100%",gap:{row:2,column:0},children:[x&&!k?(0,_.jsx)(l.xu,{padding:2,"data-test-id":"mobile-modal-cancel-button",children:(0,_.jsx)(l.hU,{accessibilityLabel:x,iconColor:"darkGray",icon:"cancel",onClick:Z,padding:4,size:"sm"})}):null,b?(0,_.jsx)(l.kC.Item,{flex:"grow",children:(0,_.jsx)(l.kC,{direction:"column",alignItems:"center",justifyContent:"center",children:(0,_.jsxs)(l.xu,{"data-test-id":"mobile-modal-heading",dangerouslySetInlineStyle:{__style:x&&!k?{marginRight:R?-10:50,marginLeft:R?50:-10}:{}},children:[S?b:(0,_.jsx)(l.xv,{align:t,weight:"bold",size:"400",children:b}),C?(0,_.jsx)(l.xv,{align:t,children:C}):null]})})}):null]}),(0,_.jsxs)(l.xu,{overflow:"auto",children:[y,v]})]})]})})}):null}},329900:(e,t,n)=>{n.d(t,{Z:()=>x});var i=n(407043),l=n(773285),a=n(780280),r=n(619277),o=n(948376),s=n(780678),d=n(826067),p=n(67347);let u="http://play.google.com/store/apps/details?id=com.pinterest",c=["access_token","new_password","new_password_confirm","password","next"],m=(e,t)=>t?(0,d.ru)(e,{invite_code:t}):e,_=(e,t,n)=>{if("ios"===t&&"string"==typeof e&&e.startsWith("discover/article/")){let t=e.split("/")[2];e=`discover_article/${t}/?is_deeplink=1`}return("string"==typeof e&&"shopping/"===e&&(e="?is_deeplink=1"),"string"==typeof e)?m(e,n):"ios"===t||"ipad"===t?m(e.iOS,n):"android"===t?m(e.android,n):null},w=({deeplinkUri:e,invite_code:t,platform:n,fallbackUrl:i,unauthId:l,app_upsell_type:a})=>({deeplink_path:_(e,n,t),current_page_url:(0,d.Gw)("undefined"!=typeof window?window.location.href:"",c),install_id:l,utm_source:140,utm_medium:2152,app_upsell_type:a,...i?{af_r:i}:null}),f=({deeplinkUri:e,invite_code:t,platform:n,unauthId:i,app_upsell_type:l})=>{let a=JSON.stringify({deeplink_path:_(e,n,t),current_page_url:(0,d.Gw)("undefined"!=typeof window?window.location.href:"",c),install_id:i}),r=(0,d.XP)({utm_source:"mweb",utm_medium:"upsell",utm_content:a,app_upsell_type:l});return{referrer:r}},y=({unauthId:e,app_upsell_type:t})=>{let n=(0,d.XP)({utm_source:"mweb",utm_medium:"upsell",utm_campaign:"twa",utm_content:e,app_upsell_type:t});return{referrer:encodeURI(n)}},h=({isAuthenticated:e,deeplinkUri:t,fallbackUrl:n,invite_code:i,logContextEvent:l,platform:a,redirectToLite:r,unauthId:o,userAgent:c,app_upsell_type:m})=>{if(null==l||l({component:14347,element:13582,event_type:701,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}}),t){let _=w({isAuthenticated:e,deeplinkUri:t,fallbackUrl:n,invite_code:i,platform:a,unauthId:o,userAgent:c,app_upsell_type:m});if((0,p.nP)("mweb.deeplink",{sampleRate:1,tags:{platform:a}}),i&&(0,p.nP)("mweb.deeplink.invite_code",{sampleRate:1}),(0,p.nP)("mweb.deeplink.unauthId",{sampleRate:1,tags:{withUnauthId:!!o}}),r){(0,p.nP)("mweb.deeplink.lite_link",{sampleRate:1}),null==l||l({component:14347,element:13582,event_type:14540,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}});let e=y({unauthId:o,app_upsell_type:m});window.location.href=(0,d.ru)("http://play.google.com/store/apps/details?id=com.pinterest.twa",e)}else if("android"===a){let e=f({deeplinkUri:t,invite_code:i,platform:a,unauthId:o,app_upsell_type:m});(0,s.v)()?(0,s.Z)().then(t=>{if(t.length>0){let e=(0,d.ru)(window.location.href,_);null==l||l({component:14347,element:13582,event_type:703,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}});let t=window.open(e);t||null==l||l({component:14347,element:13582,event_type:702,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}})}else null==l||l({component:14347,element:13582,event_type:14538,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}}),window.location.href=(0,d.ru)(u,e)}).catch(()=>{(0,p.nP)("mweb_android.deeplink.playStore.error",{sampleRate:1})}):(null==l||l({component:14347,element:13582,event_type:14538,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}}),window.location.href=(0,d.ru)(u,e))}else{if((0,p.nP)("mweb.deeplink.appsflyer_link",{sampleRate:1}),"ios"===a&&"undefined"!=typeof window&&window.location.href.includes("show_yip_modal")){window.location.href=(0,d.ru)("https://pinterest.com/pinterest-predicts",_);return}null==l||l({component:14347,element:13582,event_type:14539,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:m}}),window.location.href=(0,d.ru)("https://pinterest.onelink.me/TVSr/21e04bfd",_)}}};var v=n(785893);function b({children:e,invite_code:t}){let{isAuthenticated:n,isBot:r,unauthId:s,userAgent:{platform:d,raw:p}}=(0,a.B)(),{logContextEvent:u}=(0,i.v)(),{checkExperiment:c}=(0,l.F)(),m=async(e,i,l)=>{u({component:14347,element:13582,event_type:700,view_type:20,view_parameter:3844,aux_data:{app_upsell_type:i}}),h({isAuthenticated:n,checkExperiment:c,deeplinkUri:e,fallbackUrl:l,invite_code:t,logContextEvent:u,platform:d,redirectToLite:(0,o.Rp)({isBot:r,platform:d,userAgent:p}),unauthId:s,userAgent:p,app_upsell_type:i})};return e(m)}let g=e=>(0,v.jsx)(r.ty,{children:t=>(0,v.jsx)(b,{...e,invite_code:t})});g.displayName="DeepLinkNavigator";let x=g},63552:(e,t,n)=>{n.d(t,{Z:()=>a});var i=n(883119),l=n(785893);function a({children:e,onMouseEnter:t,onMouseLeave:n,onTouch:a,rounding:r,fullWidth:o=!1,pressState:s="none",accessibilityLabel:d,role:p}){let u=(Array.isArray(s)?s:[s]).includes("compress");return(0,l.jsx)(i.iP,{fullWidth:o,onMouseEnter:t&&(({event:e})=>t(e)),onMouseLeave:n&&(({event:e})=>n(e)),onTap:a&&(({event:e})=>a(e)),rounding:r,tapStyle:u?"compress":"none",accessibilityLabel:d,role:p,children:e})}},999023:(e,t,n)=>{n.d(t,{Z:()=>s});var i=n(667294),l=n(112690),a=n(867820);let r=e=>Object.keys(e).reduce((t,n)=>(void 0===e[n]&&delete t[n],t),{...e}),o=({viewType:e,viewParameter:t,viewData:n,auxData:i,objectIdStr:l,component:o,clientTrackingParams:s,element:d},p)=>{let u=r({event_type:13,view_type:e,view_parameter:t,view_data:n,aux_data:i,object_id_str:l,component:o,clientTrackingParams:s,element:d});-1===Object.keys(u).indexOf("view_type")&&(0,a.My)("mweb.logging.null_view_type"),p(u)};function s(e){let{auxData:t,clientTrackingParams:n,children:a,component:r,element:s,objectIdStr:d,viewData:p,viewParameter:u,viewType:c}=e,m=(0,l.Z)(),_=JSON.stringify(t),w=JSON.stringify(p);return(0,i.useEffect)(()=>{o(e,m)},[m,_,n,r,s,d,w,u,c]),i.Children.only(a)}},598615:(e,t,n)=>{n.d(t,{B:()=>w,Z:()=>f});var i=n(667294),l=n(616550),a=n(407043),r=n(385740),o=n(53987),s=n(780280),d=n(867820),p=n(52022),u=n(938917),c=n(329900),m=n(67347),_=n(785893);let w=(e,t)=>"/"===e.pathname?"/":(0,o.am)(e)&&t?`board/${e.pathname.substr(1)}`:e.pathname.substr(1);function f({children:e,componentType:t,app_upsell_type:n}){let o=(0,l.useLocation)(),{flushContextEvents:f,logContextEvent:y}=(0,a.v)(),{viewType:h,viewParameter:v}=(0,r.SU)(),b=(0,p.Z)(),{userAgent:{platform:g}}=(0,s.B)();(0,i.useEffect)(()=>{b({action:"view",item:"download-button",within:n})},[o,n,b]);let x=(0,i.useRef)(!1);(0,i.useEffect)(()=>{h&&202!==h?(y({component:t||13106,element:10308,event_type:9976,view_type:h,view_parameter:v,aux_data:{app_upsell_type:n,app_upsell_is_dupe:x.current}}),x.current=!0):(0,m.nP)("webapp.track_app_upsell_viewed_invalid_parameters",{sampleRate:1,tags:{component:t,view_type:h,view_parameter:v,app_upsell_type:n,app_upsell_is_dupe:x.current}})},[t,y,v,h,n]);let k=(0,u.Z)();return(0,i.useEffect)(()=>{k||(0,d.My)(`mweb.app_upsell.forbidden_upsell.${n}`)},[k,n]),(0,_.jsx)(c.Z,{children:i=>e({handleOpenApp:e=>{if(b({action:"click",item:"download-button",within:n}),(0,d.NC)("press_open_app",!0),y({component:t||13106,element:10308,event_type:102,view_type:h||202,view_parameter:v,aux_data:{app_upsell_type:n}}),y({component:t||13106,element:10308,event_type:9977,view_type:h||202,view_parameter:v,aux_data:{app_upsell_type:n}}),f(!0),i){var l;y({component:t||13106,element:10308,event_type:1701,view_type:h||202,view_parameter:v,aux_data:{app_upsell_type:n}}),i(null!==(l=null==e?void 0:e.deepLinkUri)&&void 0!==l?l:w(o,"android"===g),n)}}})})}},664166:(e,t,n)=>{n.d(t,{Z:()=>u,y:()=>p});var i=n(667294),l=n(30287),a=n(844974),r=n(339363),o=n(807609),s=n(999023),d=n(785893);let p=()=>{(0,a.Nh)("appUpsell",Date.now()),(0,a.qn)("firstUpsellTime")||(0,a.Nh)("firstUpsellTime",Date.now()),(0,r.Nh)("showedAppUpsellCurrentSession",!0)};function u({children:e,clientTrackingParams:t,viewParameter:n,viewType:a}){let r=(0,o.Z)();return r||(0,l.FP)(window)?null:(0,d.jsx)(s.Z,{viewType:a,viewParameter:n,component:13106,clientTrackingParams:t,children:(0,d.jsx)(i.Fragment,{children:e})})}},938917:(e,t,n)=>{n.d(t,{Z:()=>l});var i=n(702664);let l=()=>(0,i.useSelector)(({session:{canUseNativeApp:e}})=>e)},821997:(e,t,n)=>{n.d(t,{Z:()=>l});var i=n(785893);function l({size:e,noCircle:t}){return(0,i.jsxs)("svg",{height:e,style:{display:"block"},viewBox:t?"3 3 70 70":"-3 -3 82 82",width:e,children:[t?null:(0,i.jsx)("circle",{cx:"38",cy:"38",fill:"white",r:"40"}),(0,i.jsx)("path",{d:"M27.5 71c3.3 1 6.7 1.6 10.3 1.6C57 72.6 72.6 57 72.6 37.8 72.6 18.6 57 3 37.8 3 18.6 3 3 18.6 3 37.8c0 14.8 9.3 27.5 22.4 32.5-.3-2.7-.6-7.2 0-10.3l4-17.2s-1-2-1-5.2c0-4.8 3-8.4 6.4-8.4 3 0 4.4 2.2 4.4 5 0 3-2 7.3-3 11.4C35.6 49 38 52 41.5 52c6.2 0 11-6.6 11-16 0-8.3-6-14-14.6-14-9.8 0-15.6 7.3-15.6 15 0 3 1 6 2.6 8 .3.2.3.5.2 1l-1 3.8c0 .6-.4.8-1 .4-4.4-2-7-8.3-7-13.4 0-11 7.8-21 22.8-21 12 0 21.3 8.6 21.3 20 0 12-7.4 21.6-18 21.6-3.4 0-6.7-1.8-7.8-4L32 61.7c-.8 3-3 7-4.5 9.4z",fill:"#fb7072",fillRule:"evenodd"})]})}},948376:(e,t,n)=>{n.d(t,{G3:()=>p,Rp:()=>d,kp:()=>o});var i=n(202139),l=n(844974),a=n(339363);let r=14*i.F4,o=(e,t)=>{let n=function(){let e=Date.now(),t=Number((0,l.qn)("appUpsell")),n=Number((0,l.qn)("firstUpsellTime")),i=!!(0,a.qn)("showedAppUpsellCurrentSession");return{currentTime:e,firstUpsellTime:n,lastUpsellTime:t,showedAppUpsellCurrentSession:i}}();return e?function(e,t,n){let{currentTime:i,firstUpsellTime:a,lastUpsellTime:o,showedAppUpsellCurrentSession:s}=e;return(n=n||r,!a||i<a+t)?!s:i-o>n&&((0,l.L_)("firstUpsellTime"),!0)}(n,i.F4):function(e,t){let{currentTime:n,lastUpsellTime:i}=e;return t=t||r,!i||n-i>t}(n,t)},s=e=>{e=e.toLowerCase();let t=e.match(/android\s([0-9\.]*)/i);return t?t[1]:void 0},d=({isBot:e,platform:t,userAgent:n})=>{try{return!e&&"android"===t&&7>parseFloat(s(n))}catch(e){return!1}},p=e=>(e.startsWith("zh")||e.startsWith("ar")?e:e.slice(0,2)).toUpperCase()}}]);
//# sourceMappingURL=https://sm.pinimg.com/webapp/55860-1d6b85b181754d7d.mjs.map